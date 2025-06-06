package net.harrison.battleroyale.events.cunstom;

import net.minecraftforge.eventbus.api.Event;

public class BRStateEvent extends Event {
    private final boolean runningState;


    public BRStateEvent(boolean runningState) {
        this.runningState = runningState;
    }

    public boolean getRunningState() {
        return runningState;
    }
}
