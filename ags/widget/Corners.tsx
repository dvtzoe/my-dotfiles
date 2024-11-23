import { App, Astal, Gtk, Gdk } from "astal/gtk3"

export default function Corners(gdkmonitor: Gdk.Monitor) {
    return <window
        className="Corners"
        gdkmonitor={gdkmonitor}
        layer={Astal.Layer.BACKGROUND}
        exclusivity={Astal.Exclusivity.IGNORE}
        anchor={Astal.WindowAnchor.BOTTOM
            | Astal.WindowAnchor.TOP
            | Astal.WindowAnchor.RIGHT
            | Astal.WindowAnchor.LEFT
        }
        application={App}
        >
        <box
            margin-top={35}
            expand={true}
            >
            <box
                expand={true}
                halign={Gtk.Align.START}
                vertical={true}
            >
                <icon
                    expand={true}
                    valign={Gtk.Align.START}
                    icon='./assets/rounded_corners/topleft.svg'
                    css='font-size:20px'
                />
                <icon
                    expand={true}
                    valign={Gtk.Align.END}
                    icon='./assets/rounded_corners/bottomleft.svg'
                    css='font-size:20px'
                />
            </box>
            <box
                expand={true}
                halign={Gtk.Align.END}
                vertical={true}
            >
                <icon
                    expand={true}
                    valign={Gtk.Align.START}
                    icon='./assets/rounded_corners/topright.svg'
                    css='font-size:20px'
                />
                <icon
                    expand={true}
                    valign={Gtk.Align.END}
                    icon='./assets/rounded_corners/bottomright.svg'
                    css='font-size:20px'
                />
            </box>
        </box>
    </window>
}