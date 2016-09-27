# NAME

Bot::ChatBots - Basic system for ChatBots

# VERSION

This document describes Bot::ChatBots version {{\[ version \]}}.

# SYNOPSIS

    use Bot::ChatBots;
    # more will come, possibly in sub-modules

# DESCRIPTION

The Bot::ChatBots family of modules aim to help setting up ChatBots in
different technologies.

The basic model (still somehow in a state of flux) is an extension of
[Data::Tubes](https://metacpan.org/pod/Data::Tubes), with a few differences:

- pipelines in [Data::Tubes](https://metacpan.org/pod/Data::Tubes) are usually assumed to know where to take
their inputs and aim at processing all of it as fast as possible, while in
this case the it generally comes asynchronously and over an indefinite
length of time. This means that the sources of records are usually coded
differently and then push records inside pipelines as they arrive;
- processing in [Data::Tubes](https://metacpan.org/pod/Data::Tubes) is generally synchronous for simplicity,
while in this case you might have longer running tasks. This can be
addressed in different ways, one of which might be to split your pipeline
into chunks, and decouple these chunks via some queuing mechanism.

Apart from this, the suggested way to use Bot::ChatBots elements is
sticking to the [Data::Tubes](https://metacpan.org/pod/Data::Tubes) way of work: define your pipelines, reuse
already-available tube builders or code your own adhering to the (simple)
tube interface.

# BUGS AND LIMITATIONS

Report bugs either GitHub (patches welcome).

# SEE ALSO

[Bot::ChatBots::Telegram](https://metacpan.org/pod/Bot::ChatBots::Telegram) should be the first implementation of a backend (for
Telegram).

# AUTHOR

Flavio Poletti <polettix@cpan.org>

# COPYRIGHT AND LICENSE

Copyright (C) 2016 by Flavio Poletti <polettix@cpan.org>

This module is free software. You can redistribute it and/or modify it
under the terms of the Artistic License 2.0.

This program is distributed in the hope that it will be useful, but
without any warranty; without even the implied warranty of
merchantability or fitness for a particular purpose.
