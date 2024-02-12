from vuer import Vuer, VuerSession
from vuer.schemas import DefaultScene, Urdf

app = Vuer()


@app.spawn(start=True)
async def main(session: VuerSession):
  app.set @ DefaultScene(
    Urdf("assets/urdf/robotiq.urdf"),
  )

  while True:
    await session.sleep(0.1)    