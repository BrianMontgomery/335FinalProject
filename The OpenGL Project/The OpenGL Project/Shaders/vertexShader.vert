#version 330 core
layout(location = 0) in vec3 aPos;
layout(location = 1) in vec3 aColor;

uniform vec3 horizOffset;

out vec3 vertColor;

void main()
{
gl_Position = vec4(aPos.x + horizOffset.x, -aPos.y + horizOffset.y, aPos.z + horizOffset.z, 1.0);

vertColor = aPos;
}