XLM2JQM - README

xml2jqm allows to build a jQuery Mobile application from an XML file. 

The XML file
============

     <pages_all>
     <doc_title>My title</doc_title>
     
     <page>                                            <!-- open page -->
        <page_id>one</page_id>                         <!-- unique page id -->
        <page_theme>b</page_theme>                     <!-- optional values a-e by default, a-z if defined -->
        <header>Page header</header>                   <!-- optional -->
        <header_theme></header_theme>                  <!-- optional values a-e by default, a-z if defined -->
        <header_position>fixed</header_position>       <!-- optional values [empty] or fixed -->
        <content>your content here...</content>        <!-- page content can contain text or html, including jqm elements -->
        <content_theme></content_theme>                <!-- optional values a-e by default, a-z if defined -->
        <footer>my footer</footer>                     <!-- optional -->
        <footer_theme>c</footer_theme>                 <!-- optional values a-e by default, a-z if defined -->
        <footer_position>fixed</footer_position>       <!-- optional values [empty] or fixed -->
     </page>                                           <!-- close page -->
     
     </pages_all>


The produced jQuery Mobile pages
================================

The XML file is transformed into HTML using XSLT. Each page, defined between <code>&lt;page&gt;</code> and <code>&lt;page&gt;</code> is turned into a separate jQuery Mobile page.
The page_id is used as the id attribute for the page. All pages in the document will be automatically linked through the automatically generated Previous and Next buttons in the header of the page. 
The Previous button is displayed on the left side of the header, and links to the previous page in the XML document. 
The Next button is displayed on the right side of the header, and links to the next page in the XML document. When displaying the first page of the XML document, since there is no "previous" page, the "Previous" button is not displayed. Likewise, when displaying the last page of the XML document, as there is no next page, the "Next" button is not displayed.

Linking your XML file to the xml2jqm.xsl
========================================

You can either do the XSL transformation on the server or on the client. 

One simple solution is to link the xml2jqm.xsl from the xml file:
<code>&lt;?xml-stylesheet type="text/xsl" href="xml2jqm.xsl" ?&gt;</code>

Another solution is to load both the xml and the xsl files using php.

Demos
=====

View the [online demo](http://users.cscs.wmin.ac.uk/~coloma/jqm/page_jqm1.xml). This is a simple demo that shows how easy it is to create some simple jQuery Mobile pages from XML content using the xml2jqm plugin. This demo consists of a range of header/content/footer combinations to show all possibilities. The content can consist of text or html (including html that also contains jQuery Mobile elements).
The use of this plugin is in particular suitable if you produce simple repetitive pages, such as product pages, artefacts, blog entries, or image galleries. 

[demo2.xml](http://users.cscs.wmin.ac.uk/~coloma/jqm/demo2.xml) is another demo where the content consists of images. 

[demo3.xml](http://users.cscs.wmin.ac.uk/~coloma/jqm/demo3.xml) aims at demonstrating the use of the plugin for simple blog entries.