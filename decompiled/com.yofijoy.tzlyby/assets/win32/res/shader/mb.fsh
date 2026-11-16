#ifdef GL_ES  
precision mediump float;  // 设置片段着色器对float计算精度中等
#endif  
  
varying vec4 v_fragmentColor;  // varying 输入变量 来自顶点着色器 颜色
varying vec2 v_texCoord;       // 坐标

uniform sampler2D u_mask_texture; // uniform 代码中传来的常量 sampler2D变量 遮罩纹理
uniform vec2 sp_size;
uniform vec2 mask_size;
uniform vec2 v_offset;

void main() {
    vec2 texCoord = v_texCoord;
    vec2 pos = vec2(texCoord.x*sp_size.x, texCoord.y*sp_size.y);
    vec2 offset = vec2(pos.x - v_offset.x, pos.y - v_offset.y);
    
    if(offset.x <= mask_size.x && offset.x >= 0 && offset.y <= mask_size.y && offset.y >= 0)
    {
        vec2 finCoord = vec2(offset.x/mask_size.x, offset.y/mask_size.y);
        vec4 mask_FragColor = texture2D(u_mask_texture, finCoord); // 遮罩颜色

        vec4 texColor = texture2D(CC_Texture0, v_texCoord); 
        gl_FragColor = v_fragmentColor*texColor;            
        gl_FragColor.a = (1-mask_FragColor.a) * texColor.a; // 合并alpha
    }else{
        gl_FragColor = v_fragmentColor*texture2D(CC_Texture0, v_texCoord);
    }
}
