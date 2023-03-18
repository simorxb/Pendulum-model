# Pendulum-model

The Xcos model shows the model of a pendulum with viscous angular friction and a motor that applies torque to the joint, with the following assumptions:

- The rod has no mass, is rigid and is not extensible.
- The object at the end can be considered a point mass.

The Scilab script simulates the model and plots the result.

The parameters used are:

m = 0.5 kg
l = 1 m
k = 0.5 Nm*s
g = 9.81 m/s^2

The model was created to support a Linkedin post. Follow me on Linkedin! https://www.linkedin.com/in/simone-bertoni-control-eng/

Link to original Linkedin post: https://www.linkedin.com/posts/simone-bertoni-control-eng_pendulum-model-activity-7042811884852424704-yDWw?utm_source=share&utm_medium=member_desktop

Want to transform a differential equation into a simulation?

Discover the fundamental step that triggers the entire mechanism.

That is to solve the differential equation for the highest level derivative, then use simulation software (Xcos / Simulink) to feed it through as many integrators as the level of the derivative.

Example: the model of a pendulum with viscous angular friction and a motor that applies torque to the joint.

- The rod has no mass, is rigid and is not extensible.
- The object at the end can be considered a point mass.

We can use Newton's second law for rotation - the sum of the torques equals the moment of inertia times the angular acceleration:

sum(tau) = J*ddtheta

where ddtheta = angular acceleration.

Because the object is forced to stay in a circular path, only the projection of the gravitational force (m*g*sin(theta)) on the tangential axis contributes to the torque, which becomes -m*g*l*sin(theta).

Hence the equation:

tau - m*g*l*sin(theta) - k*dtheta = J*ddtheta

where J = m*l^2 as the rod has no mass and the object is a point mass.

Solving for the highest level derivative (ddtheta):

ddtheta = (tau - m*g*l*sin(theta) - k*dtheta) / (m*l^2)

Now the equation is ready to be implemented in Xcos / Simulink. Feeding ddtheta through two integrators will produce dtheta and theta, which will be used again in the calculation of ddtheta.

This "trick" that uses integrators to solve the differential equation iteratively is one of the basics of this modelling approach.

The slides below show:

- A drawing of the system
- A summary of the equations
- The implementation in Xcos
- The simulation result of the response to a 3 Nm torque step applied to the system

Values used:

m = 0.5 kg
l = 1 m
k = 0.5 Nm*s
g = 9.81 m/s^2

If you enjoyed this follow me for more tips on control and embedded software engineering.

Hit the 🔔 on my profile to get a notification for all my new posts.

Feel free to ask anything in the comments, I'll do my best to answer.

#controlsystems #embeddedsystems #softwareengineering #embeddedsoftware #controltheory
