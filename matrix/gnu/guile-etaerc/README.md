<!DOCTYPE html>
<!-- saved from url=(0079)https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html -->
<html><!-- Created by GNU Texinfo 7.0.3, https://www.gnu.org/software/texinfo/ --><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Creating Strings (GNU Emacs Lisp Reference Manual)</title>

<meta name="description" content="Creating Strings (GNU Emacs Lisp Reference Manual)">
<meta name="keywords" content="Creating Strings (GNU Emacs Lisp Reference Manual)">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rev="made" href="mailto:bug-gnu-emacs@gnu.org">
<link rel="icon" type="image/png" href="https://www.gnu.org/graphics/gnu-head-mini.png">
<meta name="ICBM" content="42.256233,-71.006581">
<meta name="DC.title" content="gnu.org">
<style type="text/css">
@import url('/software/emacs/manual.css');
</style>
</head>

<body lang="en">
<div class="section-level-extent" id="Creating-Strings">
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Modifying-Strings.html" accesskey="n" rel="next">Modifying Strings</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Predicates-for-Strings.html" accesskey="p" rel="prev">Predicates for Strings</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Strings-and-Characters.html" accesskey="u" rel="up">Strings and Characters</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>
<hr>
<h3 class="section" id="Creating-Strings-1">4.3 Creating Strings</h3>
<a class="index-entry-id" id="index-creating-strings"></a>
<a class="index-entry-id" id="index-string-creation"></a>

<p>The following functions create strings, either from scratch, or by
putting strings together, or by taking them apart.  (For functions
that create strings based on the modified contents of other strings,
like <code class="code">string-replace</code> and <code class="code">replace-regexp-in-string</code>, see
<a class="ref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Search-and-Replace.html">Search and Replace</a>.)
</p>
<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-make_002dstring"><span class="category-def">Function: </span><span><strong class="def-name">make-string</strong> <var class="def-var-arguments">count character &amp;optional multibyte</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-make_002dstring"> ¶</a></span></dt>
<dd><p>This function returns a string made up of <var class="var">count</var> repetitions of
<var class="var">character</var>.  If <var class="var">count</var> is negative, an error is signaled.
</p>
<div class="example">
<pre class="example-preformatted">(make-string 5 ?x)
     ⇒ "xxxxx"
(make-string 0 ?x)
     ⇒ ""
</pre></div>

<p>Normally, if <var class="var">character</var> is an <abbr class="acronym">ASCII</abbr> character, the
result is a unibyte string.  But if the optional argument
<var class="var">multibyte</var> is non-<code class="code">nil</code>, the function will produce a
multibyte string instead.  This is useful when you later need to
concatenate the result with non-<abbr class="acronym">ASCII</abbr> strings or replace
some of its characters with non-<abbr class="acronym">ASCII</abbr> characters.
</p>
<p>Other functions to compare with this one include <code class="code">make-vector</code>
(see <a class="pxref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Vectors.html">Vectors</a>) and <code class="code">make-list</code> (see <a class="pxref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Building-Lists.html">Building Cons Cells and Lists</a>).
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-string"><span class="category-def">Function: </span><span><strong class="def-name">string</strong> <var class="def-var-arguments">&amp;rest characters</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-string"> ¶</a></span></dt>
<dd><p>This returns a string containing the characters <var class="var">characters</var>.
</p>
<div class="example">
<pre class="example-preformatted">(string ?a ?b ?c)
     ⇒ "abc"
</pre></div>
</dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-substring"><span class="category-def">Function: </span><span><strong class="def-name">substring</strong> <var class="def-var-arguments">string &amp;optional start end</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-substring"> ¶</a></span></dt>
<dd><p>This function returns a new string which consists of those characters
from <var class="var">string</var> in the range from (and including) the character at the
index <var class="var">start</var> up to (but excluding) the character at the index
<var class="var">end</var>.  The first character is at index zero.  With one argument,
this function just copies <var class="var">string</var>.
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">(substring "abcdefg" 0 3)
     ⇒ "abc"
</pre></div></div>

<p>In the above example, the index for ‘<samp class="samp">a</samp>’ is 0, the index for
‘<samp class="samp">b</samp>’ is 1, and the index for ‘<samp class="samp">c</samp>’ is 2.  The index 3—which
is the fourth character in the string—marks the character position
up to which the substring is copied.  Thus, ‘<samp class="samp">abc</samp>’ is copied from
the string <code class="code">"abcdefg"</code>.
</p>
<p>A negative number counts from the end of the string, so that −1
signifies the index of the last character of the string.  For example:
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">(substring "abcdefg" -3 -1)
     ⇒ "ef"
</pre></div></div>

<p>In this example, the index for ‘<samp class="samp">e</samp>’ is −3, the index for
‘<samp class="samp">f</samp>’ is −2, and the index for ‘<samp class="samp">g</samp>’ is −1.
Therefore, ‘<samp class="samp">e</samp>’ and ‘<samp class="samp">f</samp>’ are included, and ‘<samp class="samp">g</samp>’ is excluded.
</p>
<p>When <code class="code">nil</code> is used for <var class="var">end</var>, it stands for the length of the
string.  Thus,
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">(substring "abcdefg" -3 nil)
     ⇒ "efg"
</pre></div></div>

<p>Omitting the argument <var class="var">end</var> is equivalent to specifying <code class="code">nil</code>.
It follows that <code class="code">(substring <var class="var">string</var> 0)</code> returns a copy of all
of <var class="var">string</var>.
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">(substring "abcdefg" 0)
     ⇒ "abcdefg"
</pre></div></div>

<p>But we recommend <code class="code">copy-sequence</code> for this purpose (see <a class="pxref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Sequence-Functions.html">Sequences</a>).
</p>
<p>If the characters copied from <var class="var">string</var> have text properties, the
properties are copied into the new string also.  See <a class="xref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Text-Properties.html">Text Properties</a>.
</p>
<p><code class="code">substring</code> also accepts a vector for the first argument.
For example:
</p>
<div class="example">
<pre class="example-preformatted">(substring [a b (c) "d"] 1 3)
     ⇒ [b (c)]
</pre></div>

<p>A <code class="code">wrong-type-argument</code> error is signaled if <var class="var">start</var> is not
an integer or if <var class="var">end</var> is neither an integer nor <code class="code">nil</code>.  An
<code class="code">args-out-of-range</code> error is signaled if <var class="var">start</var> indicates a
character following <var class="var">end</var>, or if either integer is out of range
for <var class="var">string</var>.
</p>
<p>Contrast this function with <code class="code">buffer-substring</code> (see <a class="pxref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer-Contents.html">Examining Buffer Contents</a>), which returns a string containing a portion of the text in
the current buffer.  The beginning of a string is at index 0, but the
beginning of a buffer is at index 1.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-substring_002dno_002dproperties"><span class="category-def">Function: </span><span><strong class="def-name">substring-no-properties</strong> <var class="def-var-arguments">string &amp;optional start end</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-substring_002dno_002dproperties"> ¶</a></span></dt>
<dd><p>This works like <code class="code">substring</code> but discards all text properties from
the value.  Also, <var class="var">start</var> may be omitted or <code class="code">nil</code>, which is
equivalent to 0.  Thus, <code class="code"><span class="w-nolinebreak-text">(substring-no-properties</span>&nbsp;<var class="var">string</var>)</code><!-- /@w --> returns a copy of <var class="var">string</var>, with all text
properties removed.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-concat"><span class="category-def">Function: </span><span><strong class="def-name">concat</strong> <var class="def-var-arguments">&amp;rest sequences</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-concat"> ¶</a></span></dt>
<dd><a class="index-entry-id" id="index-copying-strings"></a>
<a class="index-entry-id" id="index-concatenating-strings"></a>
<p>This function returns a string consisting of the characters in the
arguments passed to it (along with their text properties, if any).  The
arguments may be strings, lists of numbers, or vectors of numbers; they
are not themselves changed.  If <code class="code">concat</code> receives no arguments, it
returns an empty string.
</p>
<div class="example">
<pre class="example-preformatted">(concat "abc" "-def")
     ⇒ "abc-def"
(concat "abc" (list 120 121) [122])
     ⇒ "abcxyz"
;; <span class="r"><code class="code">nil</code> is an empty sequence.</span>
(concat "abc" nil "-def")
     ⇒ "abc-def"
(concat "The " "quick brown " "fox.")
     ⇒ "The quick brown fox."
(concat)
     ⇒ ""
</pre></div>

<p>This function does not always allocate a new string.  Callers are
advised not rely on the result being a new string nor on it being
<code class="code">eq</code> to an existing string.
</p>
<p>In particular, mutating the returned value may inadvertently change
another string, alter a constant string in the program, or even raise
an error.  To obtain a string that you can safely mutate, use
<code class="code">copy-sequence</code> on the result.
</p>
<p>For information about other concatenation functions, see the
description of <code class="code">mapconcat</code> in <a class="ref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mapping-Functions.html">Mapping Functions</a>,
<code class="code">vconcat</code> in <a class="ref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Vector-Functions.html">Functions for Vectors</a>, and <code class="code">append</code> in <a class="ref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Building-Lists.html">Building Cons Cells and Lists</a>.  For concatenating individual command-line arguments into a
string to be used as a shell command, see <a class="ref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Shell-Arguments.html">combine-and-quote-strings</a>.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-split_002dstring"><span class="category-def">Function: </span><span><strong class="def-name">split-string</strong> <var class="def-var-arguments">string &amp;optional separators omit-nulls trim</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-split_002dstring"> ¶</a></span></dt>
<dd><p>This function splits <var class="var">string</var> into substrings based on the regular
expression <var class="var">separators</var> (see <a class="pxref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Regular-Expressions.html">Regular Expressions</a>).  Each match
for <var class="var">separators</var> defines a splitting point; the substrings between
splitting points are made into a list, which is returned.
</p>
<p>If <var class="var">separators</var> is <code class="code">nil</code> (or omitted), the default is the
value of <code class="code">split-string-default-separators</code> and the function
behaves as if <var class="var">omit-nulls</var> were <code class="code">t</code>.
</p>
<p>If <var class="var">omit-nulls</var> is <code class="code">nil</code> (or omitted), the result contains
null strings whenever there are two consecutive matches for
<var class="var">separators</var>, or a match is adjacent to the beginning or end of
<var class="var">string</var>.  If <var class="var">omit-nulls</var> is <code class="code">t</code>, these null strings are
omitted from the result.
</p>
<p>If the optional argument <var class="var">trim</var> is non-<code class="code">nil</code>, it should be a
regular expression to match text to trim from the beginning and end of
each substring.  If trimming makes the substring empty, it is treated
as null.
</p>
<p>If you need to split a string into a list of individual command-line
arguments suitable for <code class="code">call-process</code> or <code class="code">start-process</code>,
see <a class="ref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Shell-Arguments.html">split-string-and-unquote</a>.
</p>
<p>Examples:
</p>
<div class="example">
<pre class="example-preformatted">(split-string "  two words ")
     ⇒ ("two" "words")
</pre></div>

<p>The result is not <code class="code">("" "two" "words" "")</code>, which would rarely be
useful.  If you need such a result, use an explicit value for
<var class="var">separators</var>:
</p>
<div class="example">
<pre class="example-preformatted">(split-string "  two words "
              split-string-default-separators)
     ⇒ ("" "two" "words" "")
</pre></div>

<div class="example">
<pre class="example-preformatted">(split-string "Soup is good food" "o")
     ⇒ ("S" "up is g" "" "d f" "" "d")
(split-string "Soup is good food" "o" t)
     ⇒ ("S" "up is g" "d f" "d")
(split-string "Soup is good food" "o+")
     ⇒ ("S" "up is g" "d f" "d")
</pre></div>

<p>Empty matches do count, except that <code class="code">split-string</code> will not look
for a final empty match when it already reached the end of the string
using a non-empty match or when <var class="var">string</var> is empty:
</p>
<div class="example">
<pre class="example-preformatted">(split-string "aooob" "o*")
     ⇒ ("" "a" "" "b" "")
(split-string "ooaboo" "o*")
     ⇒ ("" "" "a" "b" "")
(split-string "" "")
     ⇒ ("")
</pre></div>

<p>However, when <var class="var">separators</var> can match the empty string,
<var class="var">omit-nulls</var> is usually <code class="code">t</code>, so that the subtleties in the
three previous examples are rarely relevant:
</p>
<div class="example">
<pre class="example-preformatted">(split-string "Soup is good food" "o*" t)
     ⇒ ("S" "u" "p" " " "i" "s" " " "g" "d" " " "f" "d")
(split-string "Nice doggy!" "" t)
     ⇒ ("N" "i" "c" "e" " " "d" "o" "g" "g" "y" "!")
(split-string "" "" t)
     ⇒ nil
</pre></div>

<p>Somewhat odd, but predictable, behavior can occur for certain
“non-greedy” values of <var class="var">separators</var> that can prefer empty
matches over non-empty matches.  Again, such values rarely occur in
practice:
</p>
<div class="example">
<pre class="example-preformatted">(split-string "ooo" "o*" t)
     ⇒ nil
(split-string "ooo" "\\|o+" t)
     ⇒ ("o" "o" "o")
</pre></div>
</dd></dl>

<dl class="first-defvr first-defvar-alias-first-defvr">
<dt class="defvr defvar-alias-defvr" id="index-split_002dstring_002ddefault_002dseparators"><span class="category-def">Variable: </span><span><strong class="def-name">split-string-default-separators</strong><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-split_002dstring_002ddefault_002dseparators"> ¶</a></span></dt>
<dd><p>The default value of <var class="var">separators</var> for <code class="code">split-string</code>.  Its
usual value is <code class="code">"[&nbsp;\f\t\n\r\v]+"</code><!-- /@w -->.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-string_002dclean_002dwhitespace"><span class="category-def">Function: </span><span><strong class="def-name">string-clean-whitespace</strong> <var class="def-var-arguments">string</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-string_002dclean_002dwhitespace"> ¶</a></span></dt>
<dd><p>Clean up the whitespace in <var class="var">string</var> by collapsing stretches of
whitespace to a single space character, as well as removing all
whitespace from the start and the end of <var class="var">string</var>.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-string_002dtrim_002dleft"><span class="category-def">Function: </span><span><strong class="def-name">string-trim-left</strong> <var class="def-var-arguments">string &amp;optional regexp</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-string_002dtrim_002dleft"> ¶</a></span></dt>
<dd><p>Remove the leading text that matches <var class="var">regexp</var> from <var class="var">string</var>.
<var class="var">regexp</var> defaults to ‘<samp class="samp">[ \t\n\r]+</samp>’.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-string_002dtrim_002dright"><span class="category-def">Function: </span><span><strong class="def-name">string-trim-right</strong> <var class="def-var-arguments">string &amp;optional regexp</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-string_002dtrim_002dright"> ¶</a></span></dt>
<dd><p>Remove the trailing text that matches <var class="var">regexp</var> from <var class="var">string</var>.
<var class="var">regexp</var> defaults to ‘<samp class="samp">[ \t\n\r]+</samp>’.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-string_002dtrim"><span class="category-def">Function: </span><span><strong class="def-name">string-trim</strong> <var class="def-var-arguments">string &amp;optional trim-left trim-right</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-string_002dtrim"> ¶</a></span></dt>
<dd><p>Remove the leading text that matches <var class="var">trim-left</var> and trailing text
that matches <var class="var">trim-right</var> from <var class="var">string</var>.  Both regexps
default to ‘<samp class="samp">[ \t\n\r]+</samp>’.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-string_002dfill"><span class="category-def">Function: </span><span><strong class="def-name">string-fill</strong> <var class="def-var-arguments">string length</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-string_002dfill"> ¶</a></span></dt>
<dd><p>Attempt to Word-wrap <var class="var">string</var> so that no lines are longer than
<var class="var">length</var>.  Filling is done on whitespace boundaries only.  If
there are individual words that are longer than <var class="var">length</var>, these
will not be shortened.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-string_002dlimit"><span class="category-def">Function: </span><span><strong class="def-name">string-limit</strong> <var class="def-var-arguments">string length &amp;optional end coding-system</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-string_002dlimit"> ¶</a></span></dt>
<dd><p>If <var class="var">string</var> is shorter than <var class="var">length</var> characters, <var class="var">string</var>
is returned as is.  Otherwise, return a substring of <var class="var">string</var>
consisting of the first <var class="var">length</var> characters.  If the optional
<var class="var">end</var> parameter is given, return a string of the <var class="var">length</var> last
characters instead.
</p>
<p>If <var class="var">coding-system</var> is non-<code class="code">nil</code>, <var class="var">string</var> will be encoded
before limiting, and the result will be a unibyte string that’s
shorter than <code class="code">length</code> bytes.  If <var class="var">string</var> contains characters
that are encoded into several bytes (for instance, when using
<code class="code">utf-8</code>), the resulting unibyte string is never truncated in the
middle of a character representation.
</p>
<p>This function measures the string length in characters or bytes, and
thus is generally inappropriate if you need to shorten strings for
display purposes; use <code class="code">truncate-string-to-width</code> or
<code class="code">window-text-pixel-size</code> or <code class="code">string-glyph-split</code> instead
(see <a class="pxref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Size-of-Displayed-Text.html">Size of Displayed Text</a>).
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-string_002dlines"><span class="category-def">Function: </span><span><strong class="def-name">string-lines</strong> <var class="def-var-arguments">string &amp;optional omit-nulls keep-newlines</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-string_002dlines"> ¶</a></span></dt>
<dd><p>Split <var class="var">string</var> into a list of strings on newline boundaries.  If
the optional argument <var class="var">omit-nulls</var> is non-<code class="code">nil</code>, remove empty
lines from the results.  If the optional argument <var class="var">keep-newlines</var>
is non-<code class="code">nil</code>, don’t remove the trailing newlines from the result
strings.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-string_002dpad"><span class="category-def">Function: </span><span><strong class="def-name">string-pad</strong> <var class="def-var-arguments">string length &amp;optional padding start</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-string_002dpad"> ¶</a></span></dt>
<dd><p>Pad <var class="var">string</var> to be of the given <var class="var">length</var> using <var class="var">padding</var>
as the padding character.  <var class="var">padding</var> defaults to the space
character.  If <var class="var">string</var> is longer than <var class="var">length</var>, no padding is
done.  If <var class="var">start</var> is <code class="code">nil</code> or omitted, the padding is
appended to the characters of <var class="var">string</var>, and if it’s
non-<code class="code">nil</code>, the padding is prepended to <var class="var">string</var>’s characters.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-string_002dchop_002dnewline"><span class="category-def">Function: </span><span><strong class="def-name">string-chop-newline</strong> <var class="def-var-arguments">string</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html#index-string_002dchop_002dnewline"> ¶</a></span></dt>
<dd><p>Remove the final newline, if any, from <var class="var">string</var>.
</p></dd></dl>

</div>
<hr>
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Modifying-Strings.html">Modifying Strings</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Predicates-for-Strings.html">Predicates for Strings</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Strings-and-Characters.html">Strings and Characters</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>





</body></html>