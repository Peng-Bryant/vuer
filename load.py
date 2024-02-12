from asyncio import sleep
from vuer import Vuer, VuerSession
from vuer.schemas import Urdf, Movable, DefaultScene

app = Vuer()


# Use the following to start the server immediately
# @app.spawn(start=True)
@app.spawn
async def main(proxy: VuerSession):
    proxy.set @ DefaultScene(
        Movable(
            Urdf(
                src="https://raw.githubusercontent.com/nasa-jpl/m2020-urdf-models/main/rover/m2020.urdf",
                jointValues={},
                rotation=[3.14, 0, 0],
                position=[0, 0, -2],
            ),
            position=[0, 0, 2.15],
        ),
        grid=True,
        collapseMenu=False,
    ) 
    
      # keep the session alive.
    while True:
        await sleep(16)

# Run the app
app.run()