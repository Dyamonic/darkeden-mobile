#ifdef GL_ES
precision mediump float;
#endif

varying vec4 v_fragmentColor; // 顶点传来 颜色
varying vec2 v_texCoord;      // 顶点传来 坐标

uniform sampler2D u_texture;  // 精灵纹理
uniform sampler2D u_mask;     // 遮罩纹理
uniform vec2 v_offset;        // vec2变量 存储精灵纹理和遮罩纹理位置偏差 实现移动


void main()
{
    vec2 onePixel = vec2(1.0 / 480.0, 1.0 / 320.0) // 一个像素的宽和高, 移动n个一像素，来达到移动
    
    vec2 texCoord = v_texCoord; 
    vec2 finCoord = vec2(texCoord.x - onePixel.x*v_offset.x, texCoord.y + onePixel.y*v_offset.y);

    vec4 texColor = texture2D(u_texture, v_texCoord); // 获取目标颜色 
    vec4 maskColor = texture2D(u_mask, finCoord);

    vec4 finalColor = vec4(texColor.r, texColor.g, texColor.b, maskColor.a * texColor.a);

    gl_FragColor = v_fragmentColor * finalColor; // 获取目标颜色
}