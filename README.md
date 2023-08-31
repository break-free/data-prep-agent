# data-cleaning-agent Demonstration

Autonomous agent that cleans and prepares car insurance data.

## Description

The `data-cleaning-agent` demonstration shows how an autonomous Agent can
decide the best tools for cleaning and preparing data for ingestion into a
machine learning model or pipeline.

The technologies used are:

- **LangChain**: Provides the underlying libraries for agents, tools, prompts,
memory, and indexes.

Associated technologies to which this is tuned:

- **OpenAI ChatGPT 4.0**: LangChain libraries are used to interact with the
code base however, other chat models could be utilized.

## Installation

Note these installation instructions assume you are running a Fedora Linux
instance with `toolbox` installed. For installation on other operating systems,
follow the steps as executed in the build script.

### Download and setup environment

To install and run the `demo.py` file first download the repository.

```bash
git clone https://github.com/break-free/data-cleaning-agent.git
```

Once downloaded enter the directory and run the build script. Note you need an
OpenAI API key to run the build script; it will not run without one.

```bash
cd data-cleaning-agent
./setup/build_data-cleaning-agent.sh $OPENAI_API_KEY
```

Once completed, enter the toolbox.

```bash
toolbox enter data-cleaning-agent
```

## Run the Agent

Once setup, to run the agent use the following command (from the
`data-cleaning-agent` directory):

```bash
python3 data-cleaning-agent.py
```

## Using the Agent



## Credits

* The entire BreakFree team: for providing code, unique insights, and
alternative paths of progression; I stand on the shoulders of giants.
* https://github.com/langchain-ai/langchain[LangChain Project]: for creating
an impressive collection of libraries supporting interaction with and
extending large language models; you guys are awesome.

## License

Refer to the license.
