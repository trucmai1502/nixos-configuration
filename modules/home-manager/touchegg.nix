{
  home.file.".config/touchegg/touchegg.conf".text = ''
    <touchégg>
      <settings>
        <property name="action_execute_threshold">10</property>
        <property name="color">auto</property>
        <property name="borderColor">auto</property>
      </settings>
      <application name="All">
        <gesture type="SWIPE" fingers="4" direction="DOWN">
          <action type="CHANGE_DESKTOP">
            <direction>down</direction>
          </action>
        </gesture>
        <gesture type="SWIPE" fingers="4" direction="LEFT">
          <action type="CHANGE_DESKTOP">
            <direction>left</direction>
          </action>
        </gesture>
        <gesture type="SWIPE" fingers="4" direction="RIGHT">
          <action type="CHANGE_DESKTOP">
            <direction>right</direction>
          </action>
        </gesture>
        <gesture type="SWIPE" fingers="4" direction="UP">
          <action type="CHANGE_DESKTOP">
            <direction>up</direction>
          </action>
        </gesture>
        <gesture type="SWIPE" fingers="3" direction="LEFT">
          <action type="SEND_KEYS">
            <repeat>true</repeat>
            <modifiers>Alt_L</modifiers>
            <keys>Shift_L+Tab</keys>
            <decreaseKeys>Tab</decreaseKeys>
          </action>
        </gesture>
        <gesture type="SWIPE" fingers="3" direction="RIGHT">
          <action type="SEND_KEYS">
            <repeat>true</repeat>
            <modifiers>Alt_L</modifiers>
            <keys>Tab</keys>
            <decreaseKeys>Shift_L+Tab</decreaseKeys>
          </action>
        </gesture>
        <gesture type="PINCH" fingers="2" direction="IN">
          <action type="SEND_KEYS">
            <repeat>true</repeat>
            <modifiers>Control_L</modifiers>
            <keys>KP_Subtract</keys>
            <decreaseKeys>KP_Add</decreaseKeys>
          </action>
        </gesture>
        <gesture type="PINCH" fingers="2" direction="OUT">
          <action type="SEND_KEYS">
            <repeat>true</repeat>
            <modifiers>Control_L</modifiers>
            <keys>KP_Add</keys>
            <decreaseKeys>KP_Subtract</decreaseKeys>
          </action>
        </gesture>
      </application>
    </touchégg>
  '';
}
