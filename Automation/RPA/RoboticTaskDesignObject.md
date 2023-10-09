# Robotic Task Design Object
- After creating a robot and adding it to a robot pool, it is time to create a robotic task
- After creating the robotic task, you’re brought to a screen consisting of four tabs(where you'll add and configure robotic task actions):
    - **Edit:**
        - use to design the robotic task
        - the general design process is to create a sequence of actions, by dragging and dropping individual actions from the palette, to the Setup, Main, or Clean up section
        - Configure **robotic task variables** to pass data between robotic task actions and other design objects
        - When executed, the robotic task starts at the top, in the Setup section, then executes actions through the Main section, and finally through the Clean up section
        - **Clean Up Section:** you should configure the steps the robotic task should take when it's complete, such as closing programs it opened. The Clean up section always runs at the end of your robotic task, whether it succeeds or fails. You should use the Clean up section to return the host machine to its original state
        - **Action Groups** are useful for organizing individual actions that together complete a task. You can rename each Action Group to something meaningful for your robotic task.
        - As you add actions to your robotic task, you’ll notice the Action Configuration panel appears on the right, beneath the Variables panel
        - You’ll need to configure these fields to make the action work in your task

You can easily move the Action Groups when you need to reorder the sequence of actions to execute
    - **General Information:**
        - A new RPA developer should focus on the Description, Permission Tag and the Robot Pool fields
    - Run-Time Settings
    - **Technical Information/Support Files:**
        - is where you place files the robotic task needs during execution, such as web browser drivers
        - If your robotic task uses the Internet Explorer or Opera web browser, the web driver support file must be added to the Support Files folder
        - The version of the driver must match the version of the web browser on the host machine
        - Appian can update web drivers automatically when the robotic task uses Chrome, Firefox, or Edge. Instead of having to manually download and add web drivers to your support files, Appian can automatically maintain Selenium web drivers for you. This option is off by default: To allow Appian to automatically provide web drivers:
            - Go to the Settings tab in the Appian RPA console
            - On the Configuration tab, go to Security policies
            - Select Allow Appian to provide selenium web drivers
            - Click Save security policies.
