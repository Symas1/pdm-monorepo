import pydantic_settings


class Config(pydantic_settings.BaseSettings):
    n_requests: int = 5
