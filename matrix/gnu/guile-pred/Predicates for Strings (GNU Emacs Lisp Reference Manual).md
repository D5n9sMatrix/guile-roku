<!DOCTYPE html>
<!-- saved from url=(0085)https://www.gnu.org/software/emacs/manual/html_node/elisp/Predicates-for-Strings.html -->
<html><!-- Created by GNU Texinfo 7.0.3, https://www.gnu.org/software/texinfo/ --><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Predicates for Strings (GNU Emacs Lisp Reference Manual)</title>

<meta name="description" content="Predicates for Strings (GNU Emacs Lisp Reference Manual)">
<meta name="keywords" content="Predicates for Strings (GNU Emacs Lisp Reference Manual)">
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
<div class="section-level-extent" id="Predicates-for-Strings">
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html" accesskey="n" rel="next">Creating Strings</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/String-Basics.html" accesskey="p" rel="prev">String and Character Basics</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Strings-and-Characters.html" accesskey="u" rel="up">Strings and Characters</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>
<hr>
<h3 class="section" id="Predicates-for-Strings-1">4.2 Predicates for Strings</h3>
<a class="index-entry-id" id="index-predicates-for-strings"></a>
<a class="index-entry-id" id="index-string-predicates"></a>

<p>For more information about general sequence and array predicates,
see <a class="ref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Sequences-Arrays-Vectors.html">Sequences, Arrays, and Vectors</a>, and <a class="ref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Arrays.html">Arrays</a>.
</p>
<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-stringp"><span class="category-def">Function: </span><span><strong class="def-name">stringp</strong> <var class="def-var-arguments">object</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Predicates-for-Strings.html#index-stringp"> ¶</a></span></dt>
<dd><p>This function returns <code class="code">t</code> if <var class="var">object</var> is a string, <code class="code">nil</code>
otherwise.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-string_002dor_002dnull_002dp"><span class="category-def">Function: </span><span><strong class="def-name">string-or-null-p</strong> <var class="def-var-arguments">object</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Predicates-for-Strings.html#index-string_002dor_002dnull_002dp"> ¶</a></span></dt>
<dd><p>This function returns <code class="code">t</code> if <var class="var">object</var> is a string or
<code class="code">nil</code>.  It returns <code class="code">nil</code> otherwise.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-char_002dor_002dstring_002dp"><span class="category-def">Function: </span><span><strong class="def-name">char-or-string-p</strong> <var class="def-var-arguments">object</var><a class="copiable-link" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Predicates-for-Strings.html#index-char_002dor_002dstring_002dp"> ¶</a></span></dt>
<dd><p>This function returns <code class="code">t</code> if <var class="var">object</var> is a string or a
character (i.e., an integer), <code class="code">nil</code> otherwise.
</p></dd></dl>

</div>





</body></html>