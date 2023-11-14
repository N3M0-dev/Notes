#let authors=("Nemo",)
#let title="Ten Principles of Economics"
#let date="2023.9.11-"
#set document(author: authors, title: title)
#set page(numbering: "1", number-align: center)
#set heading(numbering: "1.1")

#let def_count=counter("Defininition")
#let th_count=counter("Theorem")


#let Upperfirst(in_str)={upper(in_str.at(0))+in_str.slice(1,in_str.len())}

// Title row.
#align(center)[
#block(text(weight: 700, 1.75em, title))
#v(1em, weak: true)
#date
]

// Author information.
#pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
      ),
    )

// Main body.
#set par(justify: true)
#set text(12pt)

#outline(indent: true)
#pagebreak()
//
//
// = How People Make Decisions
//
// / Principle 1: People Face Trade-offs
//
// / Classic trade-offs::
// / Gun and Butter: The more a society spends on national defense(gun), the less it can spend on consumer goods(butter).
// / Efficiency and Equality: If the economic pie is distributed uniformly among society members, it reduces the reward for working hard, thus leading to the result of less efficiency.
// \
// / Principle 2: The Cost of Something Is What You Give Up to Get It
//
// Opportunity cost
//
// / Principle 3: Rational People think at the Margin.
//
// / Rational People: Rational people is who systematically and purposefully do the best they can to achieve their objectives.
//
// / Margin Change: Margin change is a small incremental adjustment to a plan of action.
//
// "#emph()[Rational people] often make decisions by comparing #emph()[marginal benefits] and #emph()[marginal costs]."
//
// / e.g.: Suppose an airline has a air route that costs \$100000 for 200 passengers per plane, so one may think the ticket price should never be below \$500. But suppose that there being a plane about to take off in 30 mins but with 10 empety seats. If we sell the ticket for \$300, the margin costs is quite low (probobly a bottle of soda), but the marginal benefit in \$300. The ticket price is below \$500, but now the margin benefit is greater than the marign cost, which means it's in general beneficial, though price below \$500.
//
// == test
//
// #let s=state("x",1)
//
//


#outline(indent: true)

#let prepro(con)={
  if con.has("children"){
    if con.children.len()==0 {return (con,)}
    let search_colon(item)={
      if item.has("text"){
        if item.text==":" or item.text=="：" {
          return true
        }
        else{
          return false
        }}
      else{
        return false
      }
    }
    let pos=con.children.position(item=>search_colon(item))
    let name=[];let content=[]
    if pos!=none {
      name=[#con.children.slice(0,pos).join()];content=[#con.children.slice(pos+1).join()]}
  return (name,content)
  }
  else{return (con,)}
}


#let def(body)={
  if type(body)=="array"{
    locate(loc=>{let levelin=counter(heading).at(loc).len()
    let num=(query(selector(<def>).before(loc),loc).len()+1)
    let i=0;
    align(center)[#rect(width: 95%)[#align(start+horizon)[#pad(top: 5pt,bottom: 5pt)[
    #for def in body{
      [#heading(level: levelin+1, numbering: none)[#text(style: "italic")[Definition] #(num+i): #prepro(def).at(0)]<def>]
      prepro(def).at(1)
      i=i+1
    }
  ]]]]
  })
  }

  if type(body)=="content"{
  locate(loc=>{let levelin=counter(heading).at(loc).len()
  align(center)[#rect(width: 95%)[#align(start+horizon)[#pad(top: 5pt,bottom: 5pt)[
  #heading(level: levelin+1, numbering: none)[#text(style: "italic")[Definition] #(query(selector(<def>).before(loc),loc).len()+1): #if prepro(body).at(0)==[] [#text(fill: gray,style: "italic")[Definition term here ...]]else[#prepro(body).at(0)]]<def>
  #if prepro(body).len()>=2 [
  #prepro(body).at(1)
  ]else[#text(fill: gray,style: "italic")[
  Definition content here ...
  ]]
  ]]]]
  })
  }
}

#let theorem(body)={
  if type(body)=="array"{
    locate(loc=>{let levelin=counter(heading).at(loc).len()
    let num=(query(selector(<th>).before(loc),loc).len()+1)
    let i=0
    align(center)[#rect(width: 95%)[#align(start+horizon)[#pad(top: 5pt,bottom: 5pt)[
    #for def in body{
      [#heading(level: levelin+1, numbering: none)[#text(style: "italic")[Theorem] #(num+i): #prepro(def).at(0)]<th>]
      prepro(def).at(1)
      i=i+1
    }
  ]]]]
  })
  }

  if type(body)=="content"{
  locate(loc=>{let levelin=counter(heading).at(loc).len()
  align(center)[#rect(width: 95%)[#align(start+horizon)[#pad(top: 5pt,bottom: 5pt)[
  #heading(level: levelin+1, numbering: none)[#text(style: "italic")[Theorem] #(query(selector(<th>).before(loc),loc).len()+1): #if prepro(body).at(0)==[] [#text(fill: gray,style: "italic")[Theorem term here ...]]else[#prepro(body).at(0)]] <th>
  #if prepro(body).len()>=2 [
  #prepro(body).at(1)
  ]else[#text(fill: gray,style: "italic")[
  Definition content here ...
  ]]
  ]]]]
  })
  }
}


#let note(name: [],body)={
  align(center)[
  #block(fill: luma(230),inset: 8pt,radius: 4pt, width: 95%)[
  #align(start)[
  *Note*: #name

  #body
  ]]]
}

#let term_box(term,body)={
  if type(body)=="array"{
    locate(loc=>{let levelin=counter(heading).at(loc).len()
    let num=(query(selector(label(term)).before(loc),loc).len()+1)
    let i=0
    align(center)[#rect(width: 95%)[#align(start+horizon)[#pad(top: 5pt,bottom: 5pt)[
    #for def in body{
      [#heading(level: levelin+1, numbering: none)[#text(style: "italic")[#term] #(num+i): #prepro(def).at(0)]#label(term)]
      prepro(def).at(1)
      i=i+1
    }
  ]]]]
  })
  }

  if type(body)=="content"{
  locate(loc=>{let levelin=counter(heading).at(loc).len()
  align(center)[#rect(width: 95%)[#align(start+horizon)[#pad(top: 5pt,bottom: 5pt)[
  #heading(level: levelin+1, numbering: none)[#text(style: "italic")[#term] #(query(selector(label(term)).before(loc),loc).len()+1): #if prepro(body).at(0)==[] [#text(fill: gray,style: "italic")[term here ...]]else[#prepro(body).at(0)]]#label(term)
  #if prepro(body).len()>=2 [
  #prepro(body).at(1)
  ]else[#text(fill: gray,style: "italic")[
  term content here ...
  ]]
  ]]]]
  })
  }
}


#pagebreak()

= show usage
#def()[]
#theorem()[]
#term_box("term name here")[]


== These Are Heading Level Sensitive
#def()[test def: test def content]
#theorem()[test theorem: test theorem content]
#term_box("your term name")[test term: test term content]

#def(([array form 1: content],[array form 2:content]))
#theorem(([array form 1: content],[array form 2: content]))

== Counter Numbering Issue Fixed
