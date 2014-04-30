if [ "$1" = "all" ]
then
	/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc builder/builder.js -- toc "`cat src/header.html`" "`cat src/book.css`"   "`head -1 src/1.html src/2.html src/3.html src/4.html src/9.html src/10.html`" > all.html
	/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 1 "`cat src/1.html`" >> all.html
	/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 2 "`cat src/2.html`" >> all.html
	/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 3 "`cat src/3.html`" >> all.html
	/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 4 "`cat src/4.html`" >> all.html
	/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 9 "`cat src/9.html`" >> all.html
	/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc builder/builder.js -- chapter "`cat src/chapter.html`" "`cat src/book.css`" 10 "`cat src/10.html`" >> all.html
	/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc builder/builder.js -- toc "`cat src/footer.html`" "`cat src/book.css`"   "`head -1 src/1.html src/2.html src/3.html src/4.html src/9.html src/10.html`" >> all.html
else
	/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc builder/builder.js -- chapter "`cat src/book.html`" "`cat src/book.css`" 1 "`cat src/1.html`" > chapter1.html
	/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc builder/builder.js -- chapter "`cat src/book.html`" "`cat src/book.css`" 2 "`cat src/2.html`" > chapter2.html
	/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc builder/builder.js -- chapter "`cat src/book.html`" "`cat src/book.css`" 3 "`cat src/3.html`" > chapter3.html
	/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc builder/builder.js -- chapter "`cat src/book.html`" "`cat src/book.css`" 4 "`cat src/4.html`" > chapter4.html
	/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc builder/builder.js -- chapter "`cat src/book.html`" "`cat src/book.css`" 9 "`cat src/9.html`" > chapter9.html
	/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc builder/builder.js -- chapter "`cat src/book.html`" "`cat src/book.css`" 10 "`cat src/10.html`" > chapter10.html
	/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc builder/builder.js -- toc     "`cat src/book.html`" "`cat src/book.css`"   "`head -1 src/1.html src/2.html src/3.html src/4.html src/9.html src/10.html`" > index.html
fi