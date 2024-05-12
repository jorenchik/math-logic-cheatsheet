#set enum(numbering: "a)")


= Logical axiom schemes

$bold(L_1): B→(C →B)$

$bold(L_2):  (B→(C →D))→((B→C)→( B→D))$

$bold(L_3): B∧C→B$

$bold(L_4): B∧C→C$

$bold(L_5): B→(C →B∧C)$

$bold(L_6): B→B∨C$

$bold(L_7): C →B∨C$

$bold(L_8): (B→D)→((C →D)→(B∨C →D))$

$bold(L_9): (B→C)→((B→¬C )→¬B)$

$bold(L_10): ¬B→( B→C)$

$bold(L_12):  ∀x F (x)→F (t)$  (in particular, $∀x F (x)→F (x)$)

$bold(L_13):  F (t)→∃ x F( x)$  (in  particular, $F (x)→∃ x F (x)$)

$bold(L_14): ∀x(G →F (x))→(G→∀x F (x)) $

$bold(L_15): ∀x(F (x)→G)→(∃z(x+z+1=y).x F (x)→G)$

= Theorems

$[L_1, L_2, #[MP]]$:

+ $((A→B)→(A→C))→(A→(B→C))$. Be careful when assuming hypotheses:
  assume (A→B)→(A→C), A, B – in this order, no other possibilities! 
+ $(A→B)→((B→C)→(A→C))$. It's another version of the *Law of Syllogism* 
  (by  Aristotle),  or  the  transitivity  property  of  implication.  
+ $(A→(B→C))→(B→(A→C))$.  It's  another  version  of  the  *Premise
  Permutation Law*. Explain the difference between this formula and Theorem
  1.4.3(a): A→(B→C)├ B→(A→C).

== Theorem 1.5.1 (Deduction Theorem 1 AKA DT1)

If $T$ is a first order theory, and there is a proof of
$[T, #[MP]]: A_1, A_2, dots, A_n, B├ C$,
 then there is a proof of
$[L_1, L_2, T, #[MP]]: A_1, A_2, dots, A_n├ B→C$.


== Theorem 1.5.2 (Deduction Theorem 2 AKA DT2)

If there is a proof $[T, #[MP], #[Gen]]: A_1, A_2, dots, A_n, B├ C$,
where, after B appears in the proof, Generalization is not applied to the
variables that occur as free in $B$, then there is a proof of
$[L_1, L_2, L_14, T, #[MP], #[Gen]]: A_1, A_2, dots, A_n├ B→C$.

== Theorem 2.2.1.

+ (C-introduction): $[L_5, #[MP]]: A, B├ A∧B$;
+ (C-elimination): $[L_3, L_4, #[MP]]: A∧B ├ A, A∧B ├ B$.

== Theorem 2.2.2.

+ $[L_1, L_2, L_5, #[MP]]: (A→(B→C)) ↔ ((A→B)→(A→C))$ (extension of the axiom L_2).
+ $[L_1-L_4, #[MP]]: (A→B)∧( B→C)→( A→C)$ (another form of the *Law of
  Syllogism*, or *transitivity property of implication*).

== Theorem 2.2.3 (properties of the conjunction connective).

$[L_1- L_5, #[MP]]$:

+ $A∧B↔B∧A$ . Conjunction is commutative.
+ $ A∧(B∧C)↔( A∧B)∧C$. Conjunction  is associative.
+ $A∧A↔A$ . Conjunction is idempotent.

== Theorem 2.2.4 (properties of the equivalence connective).

$[L_1- L_5, #[MP]]$:

+ $A↔A$ (reflexivity),
+ $(A↔B)→(B↔A)$ (symmetry),
+ $(A↔B)→((B↔C) →((A↔C))$ (transitivity).


== Theorem 2.3.1

+ (D-introduction)$[L_6, L_7, #[MP]]: A├ A∨B; B├ A∨B$; 
+ (D-elimination) If there is a proof $[T, #[MP]]: A_1, A_2, ..., A_n, B├ D$,
  and a proof $[T, #[MP]]: A_1, A_2, ..., A_n, C├ D$, then there is a proof $[T,
L_1, L_2, L_8, #[MP]]: A_1, A_2, dots, A_n, B∨C ├ D$. 


== Theorem 2.3.4.

Conjunction is distributive to disjunction, and disjunction is distributive to
conjunction:

+ $[L_1-L_8, #[MP]]: (A∧B)∨C ↔(A∨C)∧(B∨C)$;
+ $[L_1-L_8, #[MP]]: (A∨B)∧C ↔(A∧C)∨(B∧C)$ .

== Theorem 2.3.2

a) $[ L_5, L_6-L_8, #[MP]]: A∨B↔B∨A$ . Disjunction is commutative.
b) $[L_1, L_2, L_5, L_6-L_8, #[MP]]: A∨A↔A$ . Disjunction is idempotent.

== Theorem 2.3.3.

Disjunction is associative: $[L_1, L_2, L_5, L_6-L_8, #[MP]]: A∨(B∨C)↔(
  A∨B)∨C$.

== Theorem 2.3.4.

Conjunction is distributive to disjunction, and disjunction is distributive to
conjunction:

+ $[L_1-L_8, #[MP]]: (A∧B)∨C ↔(A∨C)∧(B∨C)$ .
+ $[L_1-L_8, #[MP]]: (A∨B)∧C ↔(A∧C)∨(B∧C)$ .


== Theorem 2.4.1.

(N-elimination) If there is a proof

$[T, #[MP]]: A_1, A_2, ..., A_n, B├ C$, and a proof $[T, #[MP]]: A_1, A_2, ..., A_n,
B├ ¬C$, then there is a  proof $[T, L_1, L_2, L_9, #[MP]]: A_1, A_2, ..., A_n├ ¬B$.

== Theorem 2.4.2.

a) $[L_1, L_2, L_9, #[MP]]: A, ¬B├ ¬(A→B)$. What does it mean?
b) $[L_1-L_4, L_9, #[MP]]: A∧¬B→¬( A→B)$. 


== Theorem 2.4.3.

$[L_1, L_2, L_9, #[MP]]: (A→B)→(¬B→¬A)$. What does it mean?
It's the so-called *Contraposition Law*.

Note. The following rule form of Contraposition Law is called *Modus Tollens*:
$[L_1, L_2, L_9, #[MP]]: A→B, ¬B├ ¬A, or, frac(A→B \; ¬B, ¬A)$

== Theorem 2.4.4.

$[L_1, L_2, L_9, #[MP]]: A→¬¬A$.

== Theorem 2.4.5.

$[L_1, L_2, L_9, #[MP]]: ¬¬¬A↔¬A$.

== Theorem 2.4.5.

a) $[L_1, L_2, L_9, #[MP]]: ¬¬¬A↔¬A$.
b) $[L_1, L_2, L_6, L_7, L_9, #[MP]]: ¬¬( A∨¬A)$. What does it mean? This is a “weak
  form”  of  the  *Law  of  Excluded  Middle*  that  can  be  proved
  constructively. The formula $¬¬( A∨¬A)$ can be proved in the constructive logic,
  but $A∨¬A$ can't – as we will see in Section 2.8.

== Theorem 2.4.9.

+ $[L_1, L_2, L_8, L_9, #[MP]]: ¬A∨¬B→¬( A∧B)$ . It's the constructive half of the
  so-called *First de Morgan Law*. What does it mean?
+ $[L_1-L_9, #[MP]]: ¬(A∨B)↔¬A∧¬B$. It's the so-called *Second de Morgan Law*.

== Theorem 2.5.1.

+ $[L_1, L_8, L_10, #[MP]]: ¬A∨B→( A→B)$.
+ $[L_1, L_2, L_6, #[MP]]: A∨B→(¬A→B) ├¬A→(A→B)$ .  It means that the “natural”
  rule $A∨B ;¬ A ├ B$ implies $L_10$!


== Theorem 2.5.2. 

$[L_1-L_10, #[MP]]$:

+ $(¬¬A→¬¬B)→¬¬(A→B)$. It's the converse of Theorem 2.4.7(b). Hence, $[L1-L10,
  #[MP]]:├ ¬¬(A→B)↔(¬¬A→¬¬B)$.
+ $¬¬A→(¬A→A)$.  It's  the  converse  of  Theorem  2.4.6(a).  Hence, [L1-L10,
  #[MP]]: $¬¬A↔(¬A→A)$. 
+ $A∨¬ A→(¬¬A→A)$ . 
+ $¬¬(¬¬A→A)$. What does it mean? It’s a “weak” form of the Double Negations
  Law – provable in constructive logic. 

== Theorem 2.6.1. (Double Negation Law)

$[L_1, L_2, L_8, L_10, L_11, #[MP]]: ¬¬A → A$. Hence, $[L_1-L_11, #[MP]]: ¬¬A ↔
A$.

== Theorem 2.6.2.

$[L_8, L_11, #[MP]]: A→B, ¬A→B├ B$. Or, by Deduction Theorem 1, $[L_1, L_2, L_8,
L_11, #[MP]]: (A→B)→((¬A→B)→B)$.


== Theorem 2.6.3.

$[L_1-L_11, #[MP]]: (¬B→¬A)→(A→B)$. Hence, $[L_1-L_11, #[MP]]: (A→B) ↔ (¬B→¬A)$.


== Theorem 2.6.3. 

_(another one with the same number of because numbering error (it seems like it))_

$[L_1-L_9, L_11, #[MP]]: ˫ ¬(A∧B)→¬A∨¬B$ . Hence, $[L_1-L_9, L_11, MP]: ˫
¬(A∧B)↔¬A∨¬B$ .


== Theorem 2.6.4.

$[L_1-L_8, L_11, MP]: (A→B)→¬ A∨B $. Hence, (I-elimination) $[L_1-L_11, #[MP]]:
(A→B)↔¬ A∨B$.


== Theorem 2.6.5.

$[L_1-L_11, MP]: ¬(A→B)→A∧¬B $. 

== Theorem 2.7.1 (Glivenko's Theorem).

$[L_1-L_11, #[MP]]:├ A$ if and only if $[L1-L10, #[MP]]:├ ¬¬A$.


== Theorem 2.8.1.

The axiom $L_9$: $(A→B)→((A→¬B)→¬A)$ can be proved in $[L_1, L_2, L_8, L_10,
L_11, #[MP]]$.

== Replacement Theorem 1

Let us consider three formulas: $B$, $B'$, $C$, where $B$ is a sub-formula of
$C$, and $o(B)$ is a propositional occurrence of $B$ in $C$. Let us denote by
$C'$ the formula obtained from $C$ by replacing $o(B)$ by $B'$. Then, in the
minimal logic,

$[L_1-L_9, #[MP]]: B↔B'├ C↔C'$.

== Replacement Theorem 2

Let us consider three formulas: $B$, $B'$, $C$, where $B$ is a sub-formula of
$C$, and $o(B)$ is any occurrence of $B$ in $C$. Let us denote by $C'$ the
formula obtained from $C$ by replacing $o(B)$ by B'. Then, in the minimal
logic,

$[L_1-L_9, L_12-L_15, #[MP], #[Gen]]: B↔B'├ C↔C'$.


== Theorem 3.1.1.

$[L_1, L_2, L_12, L_13, #[MP]]: forall x B(x) arrow exists x B(x)$ . What does it
mean? It prohibits "empty domains".


Theorem 3.1.2.

+ [L1, L2, L12, L14, MP, Gen]: ∀x(B→C)→(∀x B→∀xC).
+ [L1, L2, L12-L15, MP, Gen]: ∀x(B→C)→(∃z(x+z+1=y).x B→∃z(x+z+1=y).xC).


== Theorems 3.1.3.

If F is any formula, then:

+ (U-introduction) [Gen]: F(x) ├∀x F(x) .
+ (U-elimination)  [L12, MP, Gen]: ∀x F(x) ├F(x) . What does it mean?
+ (E-introduction)  [L13, MP, Gen]: F(x) ├∃z(x+z+1=y).x F(x) . What does it mean?


== Theorems 3.1.4. 

If F is any formula, and G is a formula that does not contain free occurrences of x, then:

+ (U2-introduction) [L14, MP, Gen] G →F (x) ├G →∀x F (x) . What does it mean?
+ (E2-introduction) [L15, MP, Gen]: F (x)→G ├∃z(x+z+1=y).x F (x)→G . What does it mean?

== Theorem 3.1.5.

+ [L1, L2, L5, L12, L14, MP, Gen]: $forall x forall y B(x,y) ↔ forall y forall x B(x,y)$
+ [L1, L2, L5, L13, L15, MP, Gen]: $exists x exists y B(x,y) ↔ exists y exists x B(x,y)$.
+ [L1, L2, L12-L15, MP, Gen]: $exists x forall y B(x,y) ↔ forall y exists x B(x,y)$.


Theorem 3.1.6. If the formula B does not contain free occurrences of x, then
[L1-L2,  L12-L15,  MP,  Gen]: (∀x B)↔B;(∃z(x+z+1=y).x B)↔B ,  i.e.,  quantifiers
∀x ;∃z(x+z+1=y). x can be dropped or introduced as needed.

Theorem 3.2.1. In the classical logic,
 [L1-L15, MP, Gen]:  ¬
x¬B 
∀
↔ xB.


== Theorem 3.3.1. 

+ [L1-L5, L12, L14, MP, Gen]: ∀x(B∧C)↔∀x B∧∀xC .
+ [L1, L2, L6-L8, L12, L14, MP, Gen]: ├∀x B∨∀xC →∀x(B∨C) . The converse  formula ∀x(B∨C)→∀x B∨∀xC cannot  be  true.  Explain, why.


== Theorem 3.3.2.

a) [L1-L8, L12-L15, MP, Gen]: ∃z(x+z+1=y).x(B∨C)↔∃z(x+z+1=y). x B∨∃z(x+z+1=y).xC .
b) [L1-L5, L13-L15, MP, Gen]: ∃z(x+z+1=y).x(B∧C)→∃z(x+z+1=y). x B∧∃z(x+z+1=y).xC . The converse implication ∃z(x+z+1=y).x B∧∃z(x+z+1=y). xC →∃z(x+z+1=y). x(B∧C) cannot be true. Explain, why. Exercise 3.3.3. a) Prove (a→) of Theorem 3.3.2. (Hint: start by assuming B∨C , apply D-elimination, etc., and finish by E2-introduction.)

= Three-valued logic

This is a general scheme (page 74) to define a three valued logic.

For example, let us consider a kind of "three-valued logic", where 0 means
"false", 1 – "unknown" (or NULL – in terms of SQL), and 2 means "true".
Then  it  would  be  natural  to  define  “truth  values”  of  conjunction  and
disjunction as

$A∧B=min ( A, B)$ ;

$A∨B=max (A , B)$ .

But how should we define “truth values” of implication and negation?

#table(
  columns: 5,
  [$A$], [$B$], [$A∧B$], [$A∨B$], [$A→B$],
  [$0$], [$0$], [$0$], [$0$], [$i_1$],
  [$0$], [$1$], [$0$], [$1$], [$i_2$],
  [$0$], [$2$], [$0$], [$2$], [$i_3$],
  [$1$], [$0$], [$0$], [$1$], [$i_4$],
  [$1$], [$1$], [$1$], [$1$], [$i_5$],
  [$1$], [$2$], [$1$], [$2$], [$i_6$],
  [$2$], [$0$], [$0$], [$2$], [$i_7$],
  [$2$], [$1$], [$1$], [$2$], [$i_8$],
  [$2$], [$2$], [$2$], [$2$], [$i_9$],
)

#table(
  columns: 2,
  [$A$], [¬$A$],
  [$0$], [$i_10$],
  [$1$], [$i_11$],
  [$2$], [$i_12$],
)

= Model interpreation

== Interpretation of a language

=== The language-specific part

Let L be a predicate language containing:

- (a possibly empty) set of object constants $c_1, dots, c_k, dots $;
- (a possibly empty) set of function constants $f_1, dots, f_m, dots,$;
- (a non empty) set of  predicate constants $p_1, ..., p_n, ...$.

An interpretation $J$ of the language $L$ consists of the following two
entities (a set and a mapping):

+ A non-empty finite or infinite set DJ – the domain of interpretation (it will
  serve first of all as the range of object variables). (For infinite domains, set
  theory comes in here.)
+ A mapping intJ that assigns: 
  - to each object constant $c_i$ – a member $#[int]_J (c_i)$ of the domain
    $D_J$ [contstant corresponds to an object from domain];
  - to each function constant $f_i$ – a function $#[int]_J (f_i)$ from $D_J times dots 
    times D_J$ into $D_J$ [],
  - to each predicate constant $p_i$ – a predicate $#[int]_J (p_i)$ on $D_J$.

Having an interpretation $J$ of the language $L$, we can define the notion of
*true formulas* (more precisely − the notion of formulas that are true under
the interpretation $J$).

*Example.* The above interpretation of the “language about people” put in the
terms of the general definition:  


+ $D = {#[br], #[jo], #[pa], #[pe]}$.
+ $#[int]_J (#[Britney])=#[br], #[int]_J (#[John])=#[jo], #[int]_J (#[Paris])=#[pa],
  #[int]_J (#[Peter])=#[pe]$.
+ $#[int]_J (#[Male]) = {#[jo], #[pe]}; #[int]_J (#[Female]) = {#[br], #[pa]}$.
+ $#[int]_J (#[Mother]) = {(#[pa], #[br]), (#[pa], #[jo])}; #[int]_J (#[Father]) =
  {(#[pe], #[jo]), (#[pe], #[br])}$.
+ $#[int]_J (#[Married]) = {(#[pa], #[pe]), (#[pe], #[pa])}$.
+ $#[int]_J (=) = {(#[br], #[br]), (#[jo], #[jo]), (#[pa], #[pa]), (#[pe],
  #[pe])}$.

=== Interpretations of languages − the standard common part 

Finally, we define the notion of *true formulas* of the language $L$ under the
interpretation $J$ (of course, for a fixed combination of values of their free
variables – if any):

+ Truth-values of the formulas: $¬B , B∧C , B∨C , B →C$ [those are not
  examples] must be computed. This is done with the truth-values of $B$ and $C$
  by using the well-known classical truth tables (see Section 4.2).

+ The formula $∀x B$ is true under $J$ if and only if $B(c)$ is true under $J$
  for all members $c$ of the domain $D_J$.

+ The formula $∃x B$ is true under $J$ if and only if there is a member c of the
  domain $D_J$ such that $B(c)$ is true under $J$. 

*Example.* In first order arithmetic, the formula 

$
y((x= y+ y)∨( x=y+ y+1))
$

is intended to say that "x is even or odd". Under the standard interpretation S
of arithmetic, this formula is true for all values of its free variable x.

Similarly, $∀x ∀y(x+ y=y+x)$ is  a  closed  formula  that  is  true  under
this interpretation. The notion “a closed formula F is true under the
interpretation J” is now precisely defined. 


*Important − non-constructivity!* It may seem that, under an interpretation,
any closed formula is "either true or false". However, note that, for an infinite
domain  DJ,  the  notion  of  "true  formulas  under  J"  is  extremely  non-
constructive.

=== Example of building of an interpretation

In Section 1.2, in our "language about people" we used four names of people
(Britney, John, Paris, Peter) as object constants and the following predicate
constants:

+ $#[Male] (x)$ − means "x is a male person"; 
+ $#[Female] (x)$ − means "x is a female person";
+ $#[Mother] (x, y)$ − means "x is mother of y";
+ $#[Father] (x, y)$ − means "x is father of y";
+ $#[Married] (x, y)$ − means "x and y are married";
+ $x=y$ − means "x and y are the same person".

Now, let us consider the following interpretation of the language – a specific
“small four person world”:

The domain of interpretation – and the range of variables – is: $D = {#[br],
#[jo], #[pa], #[pe]}$ (no people, four character strings only!).

Interpretations of predicate constants are defined by the following truth
tables:

#table(
  columns: 3,
  [x], [Male(x)], [Female(x)],
  [br], [false], [true],
  [jo], [true], [false],
  [pa], [false], [true],
  [pe], [true], [false],
)

#table(
  columns: 6,
  [x], [y], [Father(x,y)], [Mother(x,y)], [Married(x,y)], [x=y],
  [br], [br], [false], [false], [false], [true],
  [br], [jo], [false], [false], [false], [false],
  [br], [pa], [false], [false], [false], [false],
  [br], [pe], [false], [false], [false], [false],
  [jo], [br], [false], [false], [false], [false],
  [jo], [jo], [false], [false], [false], [true],
  [jo], [pa], [false], [false], [false], [false],
  [jo], [pe], [false], [false], [false], [false],
  [pa], [br], [false], [true], [false], [false],
  [pa], [jo], [false], [true], [false], [false],
  [pa], [pa], [false], [false], [false], [true],
  [pa], [pe], [false], [false], [true], [false],
  [pe], [br], [true], [false], [false], [false],
  [pe], [jo], [true], [false], [false], [false],
  [pe], [pa], [false], [false], [true], [false],
  [pe], [pe], [false], [false], [false], [true],
)

== Three kinds of formulas

If  one  explores  some  formula  F  of  the  language  L  under  various
interpretations, then three situations are possible:

+ $F$ is true in all interpretations of the language $L$. Formulas of this kind are
  called *logically valid formulas* (LVF, Latv. *LVD*).

+ $F$  is  true  in  some interpretations  of  $L$,  and  false  − in  some other
  interpretations of $L$.

+ F is  false in all interpretations of L Formulas of this kind are called
  *unsatisfiable formulas* (Latv. *neizpildāmas funkcijas*).

Formulas that are "not unsatisfiable" (formulas of classes (a) and (b)) are
called, of course, satisfiable formulas: a formula is satisfiable, if it is
true in at least one interpretation [*satisfiable functions* (Latv. *izpildāmas
funkcijas*)].


=== Prooving an F is LVF (Latv. LVD)

First, we should learn to prove that some formula is (if really is!) logically
valid. Easiest way to do it by reasoning from the opposite: suppose that exists
such interpretation J, where formula is false, and derive a contradiction from
this. Then this will mean that formula is true in all interpretations, and so
logically valid. Check pages 125-126 of the book for example of such proof
(there is proven that axiom L12 is true in all interpretations). Definitely
check it, because in such way you will need to solve tasks in homeworks and
tests.

=== Prooving an F is satisfiable but NOT LVF 

== Gödel's Completeness Theorem

*Theorem 4.3.1.* In classical predicate logic $[L_1−L_15,#[MP],#[Gen]]$ all
logically valid formulas can be derived.

*Theorem 4.3.3.* All formulas that can be derived in classical predicate logic
$[L_1−L_15,#[MP],#[Gen]]$ are logically valid. In this logic it is not possible
to derive contradictions, it is consistent.
