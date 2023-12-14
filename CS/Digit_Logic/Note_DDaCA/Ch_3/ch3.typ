#import "@local/note_template:0.0.1": *
#import "@local/tbl:0.0.4"
#set page(numbering: "1")
#set par(justify: true)
#set heading(numbering: "1.1")

#show: tbl.template.with(box: true, tab:"|")

#frontmatter(
  title:    "Sequential Logic Design Note",
  date:     "2023 Nov 28",
  authors:  ("Nemo",),
  )

#outline(indent: true)

#pagebreak()


= Latches And Flip-Flops

= Synchronous Logic Design

What does it mean for a circuit to be sequential? And how does it differ compared to combinational logic circutis?

In a sequential logic circuit, the output can not be inferred from the current input, while that of the combinational logic circuit circuit can.

== Problematic Circuits

=== Ring oscillator

A ring oscillator is a kind of circuits that is composed of a odd number of NOT gate in a loop. Such circuits do not have a stable state and is called _unstable_ or _astable_.

=== Race Conditions

Taken the timing of the gates, there may be some race conditions in the circuit that may lead to unexpected results.

== Synchronous Sequential Cricuits

Loops in the circuit are called cyclic paths, where outputs goes back to the inputs. However, sequential circuit with cyclic paths may encounter unexpected race conditions, so to avoid the problem, we put regisiters somewhere in the path. By doing so, the sequential circuit become a collection of combinational logic and regisiters. The registers contain the state of the sysetm, which changes only at the clock edge, so we say the state is synchronized to the clock. If the clock is sufficiently slow, we can eliminate al the races. 

Rules of synchronous sequential circuit composition:
- Every circuit element is a combinational circuit or a register
- At least one circuit element is a register
- All registers receive the same clock signal
- Every cyclic path contains at least one register

== Synchronous And Asynchronous Circuits

Asynchronous design in theory is more general than synchronous design design, but synchronous design is easier, so we don't cover asynchronous design here.

= Finit State Machines



= Timing of Sequential Logic

= Parallelism

= Summary
