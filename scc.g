BEG_G {
node_t n, n0;
edge_t e, e0;
graph_t g;
int fd = openF ("scc.map", "r");
    while ((g = freadG (fd)) != NULL) {
    if (g.name != "cluster*") continue;
        for (n = fstnode(g); n; n = nxtnode(n)) {
        n0 = node ($, n.name);
        for (e = fstout(n); e; e = nxtout (e))
        e0 = isEdge (n0, node ($, e.head.name), "");
        e0.color = "red";
        e0.style = "dashed";
        }
    }
}
