from vuer import Vuer

app = Vuer(
    # These query parameters show up in the URL, and are used to configure the scene.
    queries=dict(
        reconnect=True,
        collapseMenu=True,
    ),
)

import asyncio
from vuer import VuerSession
from vuer.schemas import Scene, Box, SpotLight, Movable

# The spawn decorator is used to bind this async function to the websocket session.
# We instantiated the app earlier.
@app.spawn
async def session(sess: VuerSession):
    print("Example: we have started a websocket session!")

    # Add the scene to the vuer app
    sess.set @ Scene(
        Box(
            args=[0.1, 0.1, 0.1, 101, 101, 101],
            position=[0, 0.05, 0],
            color="red",
            materialType="standard",
            material=dict(color="#23aaff"),
            key="fox-1",
        ),
        Movable(
            SpotLight(
                intensity=10,
                key="light-1",
            ),
            position=[-0.25, 0.375, 0.125],
            scale=0.15,
            key="handle-1",
        ),
        # this is to define the up direction of the scene. Default to y up (0, 1, 0)
        up=[0, 1, 0],
        # this collapses the memu by default.
        collapseMenu=True,
    )
    # you need to await to let vuer send the Scene component up
    # to the client!
    await asyncio.sleep(0.0)


# Run the app
app.run()