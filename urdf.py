import math
from asyncio import sleep
from pathlib import Path
import numpy as np

from vuer import Vuer, VuerSession
from vuer.schemas import DefaultScene, Urdf, Movable

pi = 3.1415

app = Vuer(static_root=Path(__file__).parent / "b1z1")


# this starts the vuer server immediately after this function is declared.
@app.spawn(start=True)
async def main(app: VuerSession):
    # Note: you can only use `set` operator with Scene objects. This is a special operator.
    app.set @ DefaultScene(
        Movable(
            Urdf(
                src="http://localhost:8012/static/urdf/b1z1.urdf",
                jointValues={
                    # "imu_joint":0,
                    # "FL_hip_joint": -0.2,
                    # "RL_hip_joint": -0.2,
                    # "FR_hip_joint": 0.2,
                    # "RR_hip_joint": 0.2,
                    # "FL_thigh_joint": -0.25 * pi,
                    # "RL_thigh_joint": -0.25 * pi,
                    # "FR_thigh_joint": -1.3,
                    # "RR_thigh_joint": -0.25 * pi,
                    # "FL_calf_joint": 0.5 * pi,
                    # "RL_calf_joint": 0.5 * pi,
                    # "FR_calf_joint": 0.6 * pi,
                    # "RR_calf_joint": 0.5 * pi,
                    # "base_static_joint":0,
                    # "z1_waist":0,
                    # "z1_shoulder":0,
                    # "z1_elbow":0,
                    # "z1_wrist_angle":0,
                    # "z1_forearm_roll":0,
                    # "z1_wrist_rotate":0,
                    # "z1_gripperStator":0,
                    # "z1_jointGripper":0,
                    # "ee_gripper":0,
                },
                key="robot",
            ),
            position=[0, 0, 0.3],
            scale=0.4,
        ),
        grid=True,
    )
    await sleep(0.1)

    i = 0
    while True:
        app.update @ Urdf(
            src="http://localhost:8012/static/urdf/b1z1.urdf",
            jointValues={
                "FL_hip_joint": -0.2,
                "RL_hip_joint": -0.2,
                "FR_hip_joint": 0.2* math.sin(i * 0.9) - 1.3,
                "RR_hip_joint": 0.2,
                "FL_thigh_joint": -0.25 * pi,
                "RL_thigh_joint": -0.25 * pi,
                "FR_thigh_joint": 0.5 * math.sin(i * 0.1) - 1.3,
                "RR_thigh_joint": -0.25 * pi,
                "FL_calf_joint": 0.5 * pi,
                "RL_calf_joint": 0.5 * pi,
                "FR_calf_joint": -0.5 * math.sin(i * 0.1) + 0.6 * pi,
                "RR_calf_joint": 0.5 * pi,
            },
            key="robot",
        )
        await sleep(0.016)
        i += 1
