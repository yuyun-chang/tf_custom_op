# Custom TensorFlow Op Integration
This repository demonstrates how to integrate a custom operation into TensorFlow. The custom operation enhances TensorFlow's functionality by providing additional capabilities.

To compile the source code, follow these steps:
1. Clone the repository to your local machine using the command:
   ```bash
   git clone https://github.com/yuyun-chang/tf_custom_op.git
   ```
2. Navigate to the repository's root directory:
   ```bash
   cd tf_custom_op
   ```
3. Build the project by executing the following command:
   ```bash
   make
   ```
   This command initiates the compilation process, resulting in the necessary binaries and components being generated.

Once the compilation process is complete, you can proceed to test the custom operation.
To do so, follow these steps:
1. Ensure you have Python and TensorFlow installed on your system.
2. Run the test script cude_op_test.py using the following command:
   ```bash
   python cuda_op_test.py
   ```
   This command triggers the execution of the test script, which evaluates the functionality and correctness of the custom operation.

Please note that this example assumes you have TensorFlow and its dependencies installed. If not, make sure to install them before attempting to build and test the custom operation.

Feel free to explore and adapt this example to your specific use case.
Custom TensorFlow operations can greatly extend the capabilities of the framework, allowing you to implement specialized functionality tailored to your needs.
