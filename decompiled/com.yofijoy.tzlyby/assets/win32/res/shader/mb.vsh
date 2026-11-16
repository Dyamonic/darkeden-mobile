attribute vec4 a_position;   // 顶点坐标
attribute vec2 a_texCoord;   // 纹理坐标
attribute vec4 a_color;   

#ifdef GL_ES    
varying lowp vec4 v_fragmentColor;  
varying mediump vec2 v_texCoord;  // highp mediump lowp 用来决定计算的精度的 分别代表高、中、低三个级别的精度
#else                        
varying vec4 v_fragmentColor;   
varying vec2 v_texCoord;    
#endif  
    
void main()   
{  
    gl_Position = CC_PMatrix * a_position;   
    v_fragmentColor = a_color;  
    v_texCoord = a_texCoord;  
}