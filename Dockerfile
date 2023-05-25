FROM python:3.10

# Configure Poetry
ENV POETRY_VERSION=1.3.2

RUN pip install 'poetry==1.3.2'

RUN poetry config virtualenvs.create false

WORKDIR /app

# Install dependencies
COPY pyproject.toml ./
RUN poetry install --no-root

COPY . ./
RUN poetry install --only-root

# Run your app
#EXPOSE 5000
#ENV FLASK_APP="/app/src/isagog_api/kg_api.py"
ENTRYPOINT poetry run python app.py
