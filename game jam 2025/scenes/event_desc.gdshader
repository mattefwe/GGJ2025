shader_type canvas_item;

uniform float height = 0.8;
uniform float frequency = 2.0;
uniform float speed = 0.5;

void vertex() {
	VERTEX.y += height * sin((frequency * UV.x) + (speed * TIME));
}
