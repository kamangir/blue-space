from blueness.argparse.generic import main

from blue_codespace import NAME, VERSION, DESCRIPTION, ICON, README
from blue_codespace.logger import logger

main(
    ICON=ICON,
    NAME=NAME,
    DESCRIPTION=DESCRIPTION,
    VERSION=VERSION,
    main_filename=__file__,
    tasks={
        "build_README": lambda _: README.build(),
    },
    logger=logger,
)

