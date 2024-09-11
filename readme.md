# Spinning Cube Animation

![Preview of the Animation](preview.gif)

## Overview

This project is a simple C program that generates an animation of a 3D spinning cube. The cube moves around the terminal screen, similar to the classic DVD logo animation, but with a 3D geometric twist. The animation is rendered using ASCII characters and dynamically adjusts to the terminal window size.
No external linear algebra libraries are used, and the program is self-contained with minimal dependencies.

## Features

- **3D Cube Rotation**: The cube rotates around all three axes, giving it a dynamic and realistic 3D effect.
- **Edge Collision Detection**: The cube bounces off the edges of the terminal window, changing its velocity and rotation direction.
- **Dynamic Resizing**: The animation adjusts to the terminal's size, ensuring that it remains centered and scaled appropriately.
- **ASCII Art Rendering**: The cube is rendered using different ASCII characters (`#`, `:`, `.`) to represent different cube faces, giving it a shaded appearance.

## Requirements

- **GCC (GNU Compiler Collection)**: To compile the C program.
- **Terminal Emulator**: The program is designed to run in a terminal environment that supports ANSI escape codes for cursor manipulation and screen clearing.

## Installation

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/yourusername/spinning-cube-animation.git
    cd spinning-cube-animation
    ```

2. **Compile the Program:**

    ```bash
    make cube
    ```

3. **Run the Program:**

    ```bash
    ./cube
    ```

## How It Works

The program uses a basic 3D vector math to rotate the cube and project its
vertices onto a 2D plane, which is then mapped to the terminal window. The
faces of the cube that are visible to the "camera" are filled with different
ASCII characters, creating a simple shaded effect.

### Key Functions

- **`rotate(struct vec3* points, size_t size, struct vec3 rotation)`**: Rotates the points around the X, Y, and Z axes.
- **`project(struct vec3* points, struct vec2* projection, size_t size, struct vec2 position, double cube_size)`**: Projects the 3D points onto a 2D plane for rendering.
- **`draw(struct vec2 faces[3][4], char chars[], struct winsize *w)`**: Renders the projected points onto the terminal screen using ASCII characters.


This preview shows the cube spinning and bouncing around the screen.

## TODO
- customization via command line arguments
- speed and cube size adjustments

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
