# cs588
postgresql to csv script for the server (8584153 Pairs)

### If it is not working:
- [ ] Check version  
- [ ] Check file paths  
- [ ] Check postgresql user permissions  
- [ ] Check postgre status  
      -> commands: `systemctl status postgresql` or `service postgresql status`  
- [ ] If postgresql can not write csv file, give chmod -x -u permission to target directory.(see README.txt)

### Process .CSV file with pandas.
- [x] A jupyter notebook that loads and process .csv file is added.
- [x] Data statistics can be found in this notebook.

### Function examples: Raw & Normalized
pretty_printed_blind_renamed_functions
```java
 function_id |                     text                     
-------------+----------------------------------------------
    15976774 | private void X (X X, X < X, X > X, X X) {   +
             |     if (X == 0) {                           +
             |         return;                             +
             |     }                                       +
             |     X X [] = X.X (X);                       +
             |     for (X X : X) {                         +
             |         int X = X.X (0);                    +
             |         if (X >= 0) {                       +
             |             X X = X.X (0, X).X ();          +
             |             X X = X.X (X.X (X + 0).X (), X);+
             |             X.X (X, X);                     +
             |         }                                   +
             |     }                                       +
             | }                                           +

```
---

pretty_printed_blind_renamed_tokenized_functions
```java
function_id |  text   
-------------+---------
    15976774 | private+
             | void   +
             | X      +
             | (      +
             | X      +
             | X      +
             | ,      +
             | X      +
             | <      +
             | X      +
             | ,      +
continues..
```
---

pretty_printed_consistent_renamed_functions
```java
 function_id |                             text                             
-------------+--------------------------------------------------------------
    15976774 | private void x1 (x2 x3, x4 < x2, x2 > x5, x2 x6) {          +
             |     if (x3 == null) {                                       +
             |         return;                                             +
             |     }                                                       +
             |     x2 x7 [] = x8.x9 (x3);                                  +
             |     for (x2 x10 : x7) {                                     +
             |         int x11 = x10.x12 ('c');                            +
             |         if (x11 >= 0) {                                     +
             |             x2 x13 = x10.x14 (0, x11).x15 ();               +
             |             x2 x16 = x17.x18 (x10.x14 (x11 + 0).x15 (), x6);+
             |             x5.x19 (x13, x16);                              +
             |         }                                                   +
             |     }                                                       +
             | }                                                           +
             | 
(1 row)

```
---

pretty_printed_functions
```java
 function_id |                                               text                                               
-------------+--------------------------------------------------------------------------------------------------
    15976774 | private void decodeParms (String parms, Hashtable < String, String > p, String codificacion) {  +
             |     if (parms == null) {                                                                        +
             |         return;                                                                                 +
             |     }                                                                                           +
             |     String par [] = PATTERN_SPLIT_AMPERSAND.split (parms);                                      +
             |     for (String s : par) {                                                                      +
             |         int sep = s.indexOf ('=');                                                              +
             |         if (sep >= 0) {                                                                         +
             |             String llave = s.substring (0, sep).trim ();                                        +
             |             String valor = Utilidades.decodificar (s.substring (sep + 1).trim (), codificacion);+
             |             p.put (llave, valor);                                                               +
             |         }                                                                                       +
             |     }                                                                                           +
             | }                                                                                               +
```
