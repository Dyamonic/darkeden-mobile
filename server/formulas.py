"""Evaluate an allowlisted subset of V2 arithmetic; never eval/exec source text."""
import ast,math
ALLOWED_INPUT={'STR','DEX','INTE','SkillLevel','Level','Damage','DomainLevel','TargetLevel','TargetHP','TargetMaxHP','WeaponDamage'}
CALLS={'min':min,'max':max,'abs':abs,'pow':pow,'ceil':math.ceil,'floor':math.floor,'getPercentValue':lambda x,y:int(x*y/100)}
def expression(source,values):
    def walk(n):
        if isinstance(n,ast.Constant) and isinstance(n.value,(int,float)):return n.value
        if isinstance(n,ast.Name) and n.id in values:return values[n.id]
        if isinstance(n,ast.Attribute) and isinstance(n.value,ast.Name) and n.value.id in ['input','output']:
            return values[n.value.id+'.'+n.attr]
        if isinstance(n,ast.UnaryOp) and isinstance(n.op,(ast.UAdd,ast.USub)):
            v=walk(n.operand);return -v if isinstance(n.op,ast.USub) else v
        if isinstance(n,ast.BinOp):
            a,b=walk(n.left),walk(n.right)
            if isinstance(n.op,ast.Add):return a+b
            if isinstance(n.op,ast.Sub):return a-b
            if isinstance(n.op,ast.Mult):return a*b
            if isinstance(n.op,ast.Div):return int(a/b) if isinstance(a,int) and isinstance(b,int) else a/b
            if isinstance(n.op,ast.Mod):return a%b
        if isinstance(n,ast.Call) and isinstance(n.func,ast.Name) and n.func.id in CALLS:return CALLS[n.func.id](*[walk(a) for a in n.args])
        raise ValueError('Unsupported arithmetic expression')
    return walk(ast.parse(source,mode='eval').body)

def compute(program,inputs):
    values={'input.'+k:v for k,v in inputs.items()}
    for output,expr in program:
        value=expression(expr,values)
        if not math.isfinite(value) or abs(value)>1e12:raise ValueError('Skill formula out of bounds')
        values[output]=value
    return {k[7:]:int(v) for k,v in values.items() if k.startswith('output.')}
