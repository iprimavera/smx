- Caracteristicas:
	- Una direccion ipv4 es una secuencia de 32 bits
	- Por lo general, se representa mediante una secuencia de cuatro numeros entre 0 y 255 separados por puntos
	- Esta forma se conoce como formato decimal con puntos
	- Ejemplo -> 192.168.13.25
	- IPv4 permite 2^32 direcciones de red diferentes
	- Esta limitacion llevo a la creacion de IPv6
- Clasificación:
	- Las direcciones IP se clasifican segun el tamaño/alcance de la red

| Clase                      | Topología                | Hosts                                                                              | Dir. Inicial | Dir Final       | Dir Privadas |
| -------------------------- | ------------------------ | ---------------------------------------------------------------------------------- | ------------ | --------------- | ------------ |
| A<br>BIt ini.<br>\[0\]     | Redes de tamaño extremo  | 2^24 - 2<br>Reservadas:<br>0.x.x.x   127.x.x.x<br>reserv. local host:<br>127.0.0.1 | 0.0.0.0      | 127.255.255.255 |              |
| B<br>BIt ini.<br>\[10\]    | Redes de tamaño mediano  | 2^16                                                                               | 128.0.0.0    | 191.255.255.255 |              |
| C<br>BIt ini.<br>\[110\]   | Redes pequeñas           | 2^8 - 2                                                                            | 192.0.0.0    | 223.255.255.255 |              |
| D<br>BIt ini.<br>\[1110\]  | Reservadas multidifusión | -                                                                                  | 224.0.0.0    | 239.255.255.255 | -            |
| E<br>BIt ini.<br>\[11110\] | Reservadas investigacion | -                                                                                  | 240.0.0.0    | 255.255.255.255 | -            |
\* Denominación especial: a que corresponde el rango de clase B simple privada


- Diferencias entre direcciones publicas y privadas
	- una direccion ip privada se utiliza dentro de una red privada para conectarse de forma segura a otros dispositivos dentro de esa misma red
	- una direccion ip publica te identifica ante el resto de internet para que toda la informacion que buscas pueda encontrarte.
	- Ejemplo: utilizar una ip publica para conectarse a internet, es como utilizar un apartado de correos para el correo postal, en vez de dar la direccion de tu casa.
	- Una ip privada es la direccion que tu router asigna a tu dispositivo

|             | IP publica                                | IP privada              |
| ----------- | ----------------------------------------- | ----------------------- |
| Definición  |                                           |                         |
| Visibilidad | Accesible desde cualquier lugar del mundo | Limitada a la red local |
| Uso         |                                           |                         |
