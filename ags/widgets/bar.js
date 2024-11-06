const test = _ => Widget.Label({
    label: 'test',
})

export default Widget.Window({
    name: 'bar',
    anchor: ['top', 'left', 'right'],
    child: Widget.CenterBox({
        start_widget: Widget.Box({
            hpack: 'start',
            children: [
                test(),
            ],
        }),
        center_widget: Widget.Box({
            hpack: 'center',
            children: [
                test(),
            ],
        }),
        end_widget: Widget.Box({
            hpack: 'end',
            children: [
                test(),
            ],
        }),
    }),
})