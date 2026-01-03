// ISong_CV.typ
#set page(
  paper: "a4",
  margin: (top: 1in, bottom: 1in, left: 1in, right: 1in),
)

#set text(size: 12pt)

#set heading(numbering: none)

// --- Section styling: small caps + rule (LaTeX titlesec-like) ---
#show heading.where(level: 1): it => block(
  above: 14pt, below: 8pt,
  [
    #text(size: 16pt)[#smallcaps(it.body)]
    #line(length: 100%, stroke: 0.5pt)
  ]
)

#show heading.where(level: 2): it => block(
  above: 12pt, below: 8pt,
  [
    #text(size: 13pt)[#smallcaps(it.body)]
    #line(length: 100%, stroke: 0.25pt)
  ]
)

#show heading.where(level: 3): it => block(
  above: 2pt, below: 4pt,
  [
    #text(size: 11pt)[#smallcaps(it.body)]
    #line(length: 100%, stroke: 0.25pt)
  ]
)

// --- Compact list styling (similar to enumitem itemsep=0pt) ---
#set list(spacing: 6pt, indent: 0.25in)

// --- Reusable two-column entry table (date | detail) ---
#let entries(rows) = table(
  columns: (auto, 1fr),
  gutter: 0.8em,
  stroke: none,
  ..rows.flatten()
)

// Helper for one row
#let entry(date, body) = (
  [#date],
  [#body],
)

// --- Header ---
#align(center)[
  #text(size: 24pt)[Insang Song]
  #v(2pt)

  #stack(
    dir: ltr,
    spacing: 2em,
  link("https://www.issong.net")[issong.net],
  "|" ,
  link("https://github.com/sigmafelix")[#image("resource/logo-github.svg", height: 12pt)],
  "|" ,
   link("https://linkedin.com/in/insang-song-599987a0")[#image("resource/logo-linkedin.svg", height: 12pt)],
   "|" ,
   link("https://orcid.org/0000-0001-8732-3256")[#image("resource/logo-orcid.svg", height: 12pt)],
   "|",
  // Email (kept obfuscated like your LaTeX)
  text(size: 8pt)[
    `I at D` \
    `I = geoissong` \
    `D = snu.ac.kr`
  ]
  )
]



#v(4pt)

= Research Interests
- Environmental Health
- Geocomputation / High-Performance Computing
- Health Geography / Spatial Epidemiology
- Spatial Disparity
- Causal Inference
- Mental Health

#v(10pt)

= Professional Employment
#entries((
  entry("Sep. 2024 – Current", [
    *Assistant Professor (Tenure track)* \ Seoul National University, Seoul, Republic of Korea (South)
  ]),
  entry("Jan. 2024 – Aug. 2024", [
    *Visiting Fellow* \ National Institute of Environmental Health Sciences (NIEHS), Durham, NC, United States \
    Mentor: Dr. Kyle P. Messier
  ]),
  entry("Sep. 2023 – Jan. 2024", [
    *Data Analyst*, NIEHS
  ]),
))

#v(10pt)

= Education
#entries((
  entry("2019 – 2023", [
    *Ph.D.*, (Geography) \
    University of Oregon, Eugene, United States  \
    Dissertation: _Multiscale and Spatiotemporal Dynamics of Socioeconomic and Environmental Effects on Mental Illness Mortality_ \
    Advisor: Dr. Hui Luan
  ]),
  entry("2015 – 2017", [
    *M.A.*, (Geography) \
    Seoul National University, Seoul, Republic of Korea \
    Thesis: _Construction of a Resampling-based Imputation Model based on Spatio-temporal Kriging and Its Implication_ \
    Advisor: Dr. Key-Ho Park
  ]),
  entry("2009 – 2015", [
    *B.A.*, (Geography, European Regional Studies minor, _summa cum laude_) \
    Seoul National University, Seoul, Republic of Korea \
  ]),
))

#v(10pt)

= Projects
- Reproducible high-resolution spatiotemporal PM#sub[2.5] and PM#sub[10] modeling in Republic of Korea
- Scalable computation for geospatial exposure assessment
- Spatiotemporal analysis of antidepressant prescription and social pressure
- Impact of incorrect address in the estimation of area-representative air quality values and spatiotemporal air pollution models

#v(10pt)

= Publications
== Peer-reviewed or Refereed Journal Articles
- For details, please refer to my #link("https://scholar.google.com/")[Google Scholar page].


#bibliography(
  "resource/is-publication.bib",
  style: "resource/authordate-desc.csl",
  full: true,
  title: none
)

#v(10pt)

#set par(hanging-indent: 1.5em)


== Under review / In preparation

Song, I., \& Luan, H. Under review. Ecological gradients shape the effect of residential greenspace exposure on mental illness mortality. _International Journal of Health Geographics_.

Shin, H., Park, S., \& Song, I. Under review. An R and Python Toolkit for South Korean Census Data: tidycensuskr and pycensuskr. _Environment and Planning B: Urban Analytics and City Science._

Song, I., \& Luan, H. In preparation. Does missing mechanism matter to the imputation accuracy? - an evaluation of imputation algorithms for missing mechanisms in simulated and real spatiotemporal data. 



== Policy Reports
Ransome, Y., Song, I., Pham, L., \& Busette, C. (2022). Churches are closing in predominantly Black communities why public health officials should be concerned. The Brookings Institution. #link("https://policycommons.net/artifacts/4141562/churches-are-closing-in-predominantly-black-communities-why-public-health-officials-should-be-concerned/4949369/")[(link)]



= Conference Presentations

== Oral Presentations

Song, I. (2022). Spatial difference in the impact of greenspace exposure on mental illness mortality in the Pacific Northwest United States. _Association of American Geographers 2022 84th Annual Meeting_. Bellingham, WA. Oct. 4–6, 2022.

Song, I. (2021). Does missing mechanism matter?—an evaluation of imputation algorithms for missing mechanisms. _2021 American Association of Geographers Annual Meeting_. Virtual. Apr. 7 -- 11, 2021. 

Song, I. (2020). Getting time from space: interactive visualization of temporal information from spatial data. _2020 Portland Cartography Symposium_. Portland, OR. Mar. 6, 2020. 

Song, I., \& Luan, H. (2020). Local explanations of individual characteristics and district-level air pollution on low birth weight in South Korea: a Bayesian network approach. _2020 American Association of Geographers Annual Meeting_. (Cancelled due to the COVID-19) 

Song, I., \& Kim S.-Y. (2016). Estimation of representative areal concentrations of particulate air pollution in Seoul, Korea. _2016 American Association of Geographers Annual Meeting_. San Francisco, CA. Mar. 29 – Apr. 4, 2016. 


== Poster Presentations

Song, I., \& Messier, K.P. (2024). R-based geospatial parallel processing tool for environmental health research by data partitioning. _American Geophysical Union 2024 Annual Meeting_. Washington, D.C., Dec. 9–13, 2024.

Messier, K.P., Manware, M., Marques, E., Alifa Kassien, M., Clark, L., Singh, A., Ward-Caviness, C., \& Song, I. (2024). Reproducible Pipelines for Updateable and FAIR Geostatistical Air Pollution Exposure Models. _American Geophysical Union 2024 Annual Meeting_. Washington, D.C., Dec. 9–13, 2024.

Song, I., \& Messier, K.P. (2024). Development of geospatial parallel processing software tool for large-scale geospatial exposure assessment. _ISEE Conference Abstracts_ 2024(1). Santiago, Chile, Aug. 25–28, 2024. (Virtual Presentation)

Song, I., Marques, E., Manware, M., Alifa Kassien, M., Daw, R., Zilber, D., Singh, A., Clark, L., Ward-Caviness, C., \& Messier, K.P. (2024). Air Pollution Data for the Masses: An Open-Access, Test-Driven, and Reproducible Pipeline PM#sub("2.5") Hybrid Model for Epidemiology Applications. _ISEE Conference Abstracts_ 2024(1). Santiago, Chile, Aug. 25–28, 2024. (Virtual Presentation)

Song, I., \& Luan, H. (2022). Matching by multivariate similarity matrix with geographic coordinates: Causal inference of the relationship between residential greenspace and deaths by mental illness. _GEOMED 2022_. Irvine, CA. Oct. 12–14, 2022. 

Song, I., \& Kim, S.-Y. (2018). A study on the association between two air pollutants (PM#sub("10"), NO#sub("2")) and traffic-related variables in 2010. _Proceedings of the Korean Society of Atmospheric Environment_ 2018: 210.  

Song, I., \& Kim S.-Y. (2016). Local difference of association between PM#sub("10") and low birth weight. _Proceedings of the Korean Society of Environmental Health and Toxicology_ 2016(10):297. (Awarded by the Korean Society of Environmental Health and Toxicology) 


= Trainees
- Mr. Daehoon Yu (Master's, 2025 – Current)

#pagebreak()

= Research Experience
*Affiliated Researcher* #h(1fr) Aug. 2021 – Aug. 2023 \
National Cancer Center of Korea, Republic of Korea

*Research Assistant* #h(1fr) Jun. 2020 – Jun. 2023 \
Department of Geography, University of Oregon

*Researcher* #h(1fr) Oct. 2017 – Aug. 2019 \
The Institute for Korean Regional Studies, Seoul National University, Republic of Korea

*Research Assistant* #h(1fr) Sep. 2017 – Aug. 2019 \
National Research Foundation of Korea, Republic of Korea \
Simulation and epidemiological studies on spatial exposure prediction modeling approaches (PI: Dr. Sun-Young Kim, National Cancer Center of Korea)

*Researcher* #h(1fr) Jan. – Dec. 2018 \
National Cancer Center of Korea, Republic of Korea

*Research Assistant* #h(1fr) Jun. – Oct. 2017 \
Asia Center, Seoul National University, Republic of Korea

*Research Assistant* #h(1fr) Mar. 2015 – Feb. 2017 \
Brain Korea 21 Plus, Seoul National University, Republic of Korea

*Research Assistant* #h(1fr) Jan. – Mar. 2016 \
The Seoul Institute, Republic of Korea

*Student Researcher* #h(1fr) Nov. 2014 – Feb. 2015 \
University for Creative Korea Initiative, Seoul National University, Republic of Korea

*Student Researcher* #h(1fr) Jun. 2013 – Dec. 2014 \
Seoul National University, Republic of Korea 

*Research Assistant* #h(1fr) Oct. 2014 – Nov. 2014 \
The Korea Research Institute for Human Settlements, Republic of Korea


= Work Experience

*Instructor* #h(1fr) May and Aug. 2017 \
Partnerships in Environmental Management for the Seas of East Asia \


*Field Geographic Data Collection Coordinator* #h(1fr) Jul. 2015 – Oct. 2015 \
Seoul National University


*Secretary* #h(1fr) Mar. 2014 – Dec. 2014 \
The Association of Korean Cultural and Historical Geographers, Seoul, Republic of Korea


*Field Geographic Data Collector* #h(1fr) Jul. 2014 \
Seoul National University

*Sergeant (GIS Specialist)* #h(1fr) Feb. 2011 – Nov. 2012 \
The 3#super("rd") Republic of Korea Army Headquarters, Republic of Korea Army, Republic of Korea


= Teaching Experience
*Seoul National University* 

Seminars in Spatial Big Data and Machine Learning #h(1fr) Fall 2025

Analytical Methods in Geography 3: Spatiotemporal Data Science #h(1fr) Fall 2025

Seminars in Health \& Medical Geography #h(1fr) Spring 2025

Analytical Methods in Geography 1: Statistical Modeling #h(1fr) Spring 2025

Analytical Methods in Geography 2: Machine Learning #h(1fr) Fall 2024


*Instructor, University of Oregon* #h(1fr) Jan. – Apr. 2023 \
Geographic Information Science (GIScience) I #h(1fr)

*Teaching Assistant, University of Oregon*

Public Health and GIS #h(1fr) Apr. – Jun. 2022

Topic Geospatial Data Science Applications (Python) #h(1fr) Jan. – Mar. 2022

Spatial Analysis #h(1fr) Sep. – Dec. 2021

GIScience I #h(1fr) Jan. – Mar. 2021

Spatial Analysis #h(1fr) Sep. – Dec. 2020


*Session Organizer and Tutor*

Geographers' Cooperative Network for Data Analysis (#link("https://www.github.com/sigmafelix/vizconda")[GeoCONDA]) Bootcamp
#h(1fr) Jun. 2018 – Aug. 2018 

*Teaching Assistant, Seoul National University*

Analytical Methods in Geography #h(1fr) Spring 2017 

Geographic Information Systems #h(1fr) Fall 2015


== Guest Lecture

Regional health effect analysis with spatiotemporal analytical methods, Program in National and Urban Policy, Korea University, May 1, 2025 (Korean).

Potentials and challenges in the triad of GIS, geographic knowledge, and large language models, Introduction to GIS for Planners, Department of City and Regional Planning, Cornell University, May 7, 2024, Virtual.



// Invited talks

= Invited Talks

Practices and Challenges in Open Geographic Information Science for Geographic Health Disparity Research. Department of Geography Education, Seoul National University. Oct. 2025.

After relocation: sensitivity in health effect analysis by changes in particulate matter concentration by the relocation of governmental monitoring sites. Institute of Social Sciences, Seoul National University. Apr. 2025.

Spatial clustering analysis with covariates: a case of stomach and lung cancer at district level in South Korea. National Cancer Center of Korea. Dec. 2021, Virtual.

Vessel trajectory analysis: a case study in Yellow Sea. The Korea Maritime Institute. Sep. 2021, Virtual.



= Professional Development

FOSS4G Korea 2025, _Building a Urban Digital Twin with mago3D_, Dec. 5, 2025, Seoul, Republic of Korea.

Office of Intramural Training \& Education, National Institutes of Health, _Responsible Conduct of Research Training_, Mar. 6, 2024, Virtual.

American Association of Geographers 2022 Summer Series: Advanced-level Workshop, _Developing Open Source SpatiaLite Databases in QGIS_, Jul. 11 – Sep. 8, 2022, Virtual. 

The Big Data Institute, Seoul National University, _The 5#super("th") Big Data Camp: Introductory Engineering for Big Data Scientists_, Feb. 6 – 8, 2017, Seoul, Republic of Korea. 

= Awards and Honors

Sandra Pritchard Mather Graduate Student Award, University of Oregon, Jun. 2022. 

Lokey Graduate Science Award, University of Oregon, Oct. 2019. 

Excellent Poster Award, The Korean Society of Environmental Health and Toxicology, Oct. 2016.

= Grants and Scholarships
== Funded
New Faculty Startup Fund, Seoul National University. Oct. 2024 – Sep. 2026.

The Association of Pacific Coast Geographers, Travel Grant, Oct. 2022. 

University of Oregon, Department of Geography Sandra Pritchard Mather Graduate Award, Jun. 2022. 

University of Oregon, Department of Geography Rippey Dissertation Grant, Apr. 2022. 

University of Oregon, Department of Geography Rippey Graduate Grant, Dec. 2021. 

University of Oregon, Raymund First-Year Ph.D. Fellowship, Fall 2019 – Spring 2020. 

University of Oregon, Lokey Graduate Science Award, Fall 2019. 

Seoul National University, Lecture and Research Scholarship, Spring 2017. 

Seoul National University, International Conference Grant, Mar. – Apr. 2016. 

Seoul National University, Merit-based Scholarship, Spring – Fall 2015 and Fall 2016. 

The Sung Ryun Scholarship Foundation, Academic Performance, Spring 2014. 

Seoul National University, Undergraduate Research Grant, Fall 2013 and Fall 2014. 

Seoul National University, Academic Performance, Fall 2009 – Spring 2011. 

The Priming Water Scholarship Foundation, Academic Performance, Mar. 2009. 


== Not funded
National Research Foundation of Korea, Young Researcher Program (Humanities and Social Sciences Track)

National Science Foundation, Doctoral Dissertation Research Improvement Grant. 


= Membership

#stack(
  dir: ttb,
  spacing: 8pt,
  "American Geophysical Union",
  "American Association of Geographers",
  "The Korean Geographical Society",
  "The Korean Cartographic Association"
)



= Service
== Manuscript review
_BMC Public Health_ (8), _JAMA Network Open_ (1), _npj Urban Sustainability_ (1), _npj Digital Public Health_ (1), _Scientific Reports_ (2), _International Journal for Equity in Health_ (1), _International Journal of Health Geographics_ (3), _Atmospheric Environment: X_ (1)

== Intramural service
Cartography Division Head, The Institute for Korean Regional Studies, Seoul National University (2025 – Current)

Graduate Admission Committee, Department of Geography, Seoul National University (2024 – 2025)

Department Steward, Graduate Teaching Fellow Federation, University of Oregon (2020 – 2022) 

Treasurer, Geography Graduate Student Association, Seoul National University (SNU) (2015) 

Chair and Member, Geography Club GET, Department of Geography, SNU (2013 – 2014) 

Organizer, Classics in Social Sciences Reading Group, Department of Geography, SNU (2013 – 2014) 

Co-organizer, Geographers' Night, Department of Geography, SNU (2014) 

== Extramural service

Deputy Lead, Department of Academic Affairs, The Korean Cartographic Association (2026 – 2027)


== Outreach service
Braille Book Production Volunteer, Siloam Welfare Center for the Blind (Seoul, Republic of Korea) (2013) 

Mentor, Seoul National University \& Korea Scholarship Foundation (Seoul, Republic of Korea) (2013) 


= Skills

#entries((
  entry("Computer language", [
    R, Python, Julia, SQL (SpatiaLite, PostGIS), JavaScript, C++, LaTeX, Shell
  ]),
  entry("Software", [
    QGIS, ArcGIS Suite, Microsoft Office Suite, Microsoft Azure, Git, Docker, Apptainer (Singularity), Quarto, Shiny, GIMP, Inkscape, Blender, Typst
  ]),
  entry("Language", [
    Korean (Native), English (Professional Proficiency), Standard Chinese, Japanese, German (Reading)
  ]),
))



= Software

#link("https://www.github.com/sigmafelix/autoSTK")[`autoSTK`: Automatic Spatiotemporal Kriging in R]

#v(8pt)

#link("https://www.github.com/ropensci/chopin")[`chopin`: Computation of Spatial Data by Hierarchical and Objective Partitioning of Inputs for Parallel Processing (the software is peer-reviewed through rOpenSci)]

#v(8pt)

#link("https://www.github.com/sigmafelix/tidycensuskr")[`tidycensuskr`], #link("https://github.com/sigmafelix/pycensuskr")[`pycensuskr`]: Easy Access for South Korea Census Data and Boundaries


= Patents

#link("https://doi.org/10.8080/1020220024117?urlappend=en")[Korea Patent Registration No. 1024661190000],  Apparatus and Method for Extracting Main Vessel Lane Network Based on AIS Information (with Jongseo Yim, Jae-Young Park, Sungjin Cho, and Chan-Woong Kim) 


#link("https://doi.org/10.8080/1020170136531?urlappend=en")[Korea Patent Registration No. 1019917960000], Method of Automatically Generating Input File of Marxan with Zones from Shapefile (with Jung-Ho Nam and Jongseo Yim). 



= Other Information
Nationality: Republic of Korea


#v(3em)

Last edited: Jan. 03, 2026