# $title$

**$position$**
[GitHub]($contacts.github$) | [LinkedIn]($contacts.linkedin$) | [Telegram]($contacts.telegram$)  
\textemoji{📧} $contacts.email$ | \textemoji{📞} $contacts.phone$ | \textemoji{🌍} $contacts.location$

---

$for(sections)$
## $if(sections.emoji)$\textemoji{$sections.emoji$}$endif$ $sections.title$
$if(sections.is_experience)$
$for(sections.items)$
### **$sections.items.job_title$**
**$sections.items.organization$**
$sections.items.industry$
$if(sections.items.organization_url)$[$sections.items.organization_url$]$endif$
*$sections.items.date$ | $sections.items.location$*

$if(sections.items.highlights)$
$for(sections.items.highlights)$
_$sections.items.highlights$_
$endfor$
$endif$

$for(sections.items.tasks)$
- **$sections.items.tasks.lead$**: $sections.items.tasks.description$
$endfor$
#### **Tech Stack**: 
$for(sections.items.tech_stack)$
- $sections.items.tech_stack$
$endfor$
---
$endfor$
$endif$

$if(sections.is_skills)$
$for(sections.items)$
- **$sections.items.lead$**: $sections.items.description$
$endfor$
$endif$

$if(sections.is_previous)$
$for(sections.items)$
- $sections.items$
$endfor$
$endif$

$if(sections.is_summary)$
$for(sections.items)$
$sections.items$
$endfor$
$endif$

$if(sections.is_education)$
$for(sections.items)$
$sections.items.title$ - $sections.items.organization$ - $sections.items.location$ - $sections.items.date$

$endfor$
$endif$

$endfor$