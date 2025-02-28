#version 150

#moj_import <fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform int FogShape;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

float offsets[9] = float[9](
    0.05,
    0.0,
    -1.0,
    -0.5,
    0.0,
    0.5,
    1.0,
    1.5,
    2.0
);

void main() {
    bool markerShadow = (ivec2(Color.gb * 255. + 0.5) == ivec2(1, 62)) || (ivec2(Color.gb * 255. + 0.5) == ivec2(1, 61));

    if (markerShadow) {
        gl_Position = vec4(3.0, 3.0, 3.0, 1.0);
        return;
    }

    int p = int(Color.r * 255. + 0.5);
    ivec2 ioffset = ivec2(
        (p >> 4) & 0xf,
        p & 0xf
    );

    bool ouo = ivec2(Color.gb * 255. + 0.5) == ivec2(4, 244);

    bool marker = (ivec2(Color.gb * 255. + 0.5) == ivec2(4, 249) || (Color.gb * 255. + 0.5) == ivec2(4, 248) || ouo)
        && ioffset.x < offsets.length()
        && ioffset.y < offsets.length();
        
    if (marker) {
        gl_Position = ProjMat * ModelViewMat * vec4(Position.xy, Position.z - 2.0, 1.0);

        vec2 offset = vec2(
            offsets[ioffset.x],
            offsets[ioffset.y]
        );

        gl_Position.xy += gl_Position.w * offset;

    } else {
        gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    }


    vertexDistance = fog_distance(Position, FogShape);
    vertexColor = texelFetch(Sampler2, UV2 / 16, 0);

    bool darken = ivec2(Color.gb * 255. + 0.5) == ivec2(4, 248);

    if (marker)
        vertexColor.a *= Color.a;
    else
        vertexColor *= Color;
    if(darken)
        vertexColor.rgb = vec3(0.5,0.5,0.5);
    if(ouo)
        vertexColor.rgb = vec3(1,0.2,0.8);
    texCoord0 = UV0;
}