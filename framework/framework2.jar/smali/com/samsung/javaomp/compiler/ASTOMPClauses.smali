.class Lcom/samsung/javaomp/compiler/ASTOMPClauses;
.super Lcom/samsung/javaomp/compiler/SimpleNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;
    }
.end annotation


# instance fields
.field protected chunkSize:I

.field protected collapseSize:I

.field protected copyprivateList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected finalExpression:Ljava/lang/String;

.field protected firstprivateList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fullSharedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/javaomp/compiler/Variable;",
            ">;"
        }
    .end annotation
.end field

.field protected ifExpression:Ljava/lang/String;

.field protected isDefaultNone:Z

.field protected isDefaultShared:Z

.field protected isMergeable:Z

.field protected isNoWait:Z

.field protected isOrdered:Z

.field protected isParallel:Z

.field protected isReduction:Z

.field protected lastprivateList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected nestedClausesList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/javaomp/compiler/ASTOMPClauses;",
            ">;"
        }
    .end annotation
.end field

.field protected numThreads:Ljava/lang/String;

.field protected outerClauses:Lcom/samsung/javaomp/compiler/ASTOMPClauses;

.field protected outerClausesList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/javaomp/compiler/ASTOMPClauses;",
            ">;"
        }
    .end annotation
.end field

.field protected privateList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected reductionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected reductionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected scheduleType:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

.field protected sharedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected usedVariables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected usedVariablesCollected:Z


# direct methods
.method public constructor <init>(I)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(I)V

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->usedVariablesCollected:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->nestedClausesList:Ljava/util/LinkedList;

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->outerClausesList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->privateList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->sharedList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->firstprivateList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->lastprivateList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->copyprivateList:Ljava/util/LinkedList;

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->fullSharedList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->usedVariables:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->ifExpression:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->finalExpression:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->numThreads:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isNoWait:Z

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isReduction:Z

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isDefaultShared:Z

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isDefaultNone:Z

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isParallel:Z

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isMergeable:Z

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isOrdered:Z

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->scheduleType:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    iput v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->chunkSize:I

    iput v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->collapseSize:I

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->initializeReductionMap()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->usedVariablesCollected:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->nestedClausesList:Ljava/util/LinkedList;

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->outerClausesList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->privateList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->sharedList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->firstprivateList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->lastprivateList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->copyprivateList:Ljava/util/LinkedList;

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->fullSharedList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->usedVariables:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->ifExpression:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->finalExpression:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->numThreads:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isNoWait:Z

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isReduction:Z

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isDefaultShared:Z

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isDefaultNone:Z

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isParallel:Z

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isMergeable:Z

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isOrdered:Z

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->scheduleType:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    iput v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->chunkSize:I

    iput v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->collapseSize:I

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->initializeReductionMap()V

    return-void
.end method

.method private initializeReductionMap()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    const-string v1, "+"

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    const-string v1, "-"

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    const-string v1, "*"

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "min"

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "max"

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    const-string v1, "&&"

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "||"

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "|"

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    const-string v1, "&"

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    const-string v1, "^"

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addAllCopyprivate(Ljava/util/LinkedList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->copyprivateList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addAllFirstprivate(Ljava/util/LinkedList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->firstprivateList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addAllLastprivate(Ljava/util/LinkedList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->lastprivateList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addAllPrivate(Ljava/util/LinkedList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->privateList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addAllReduction(Ljava/lang/String;Ljava/util/LinkedList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isReduction:Z

    return-void
.end method

.method public addAllShared(Ljava/util/LinkedList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->sharedList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addNestedClause(Lcom/samsung/javaomp/compiler/ASTOMPClauses;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->nestedClausesList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUsedVariable(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->usedVariables:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected collectReductionVariables()Ljava/util/LinkedList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionList:Ljava/util/LinkedList;

    if-nez v0, :cond_3f

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionList:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_3f
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public collectUsedVariables()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->nestedClausesList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;

    iget-boolean v2, v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->usedVariablesCollected:Z

    if-nez v2, :cond_19

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->collectUsedVariables()V

    :cond_19
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->usedVariables:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->usedVariables:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->usedVariablesCollected:Z

    return-void
.end method

.method public getChunkSize()I
    .registers 2

    iget v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->chunkSize:I

    return v0
.end method

.method public getCollapseSize()I
    .registers 2

    iget v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->collapseSize:I

    return v0
.end method

.method public getCopyprivateList()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->copyprivateList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getFinalExpression()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->finalExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstprivateList()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->firstprivateList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getFullSharedList()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/javaomp/compiler/Variable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->fullSharedList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getIfExpression()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->ifExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getLastprivateList()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->lastprivateList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getNumThreads()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->numThreads:Ljava/lang/String;

    return-object v0
.end method

.method public getOuterClauses()Lcom/samsung/javaomp/compiler/ASTOMPClauses;
    .registers 2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->outerClauses:Lcom/samsung/javaomp/compiler/ASTOMPClauses;

    return-object v0
.end method

.method public getOuterClausesList()Ljava/util/LinkedList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/javaomp/compiler/ASTOMPClauses;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->outerClausesList:Ljava/util/LinkedList;

    if-nez v0, :cond_21

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->outerClausesList:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->outerClauses:Lcom/samsung/javaomp/compiler/ASTOMPClauses;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->outerClausesList:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->outerClauses:Lcom/samsung/javaomp/compiler/ASTOMPClauses;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->outerClausesList:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->outerClauses:Lcom/samsung/javaomp/compiler/ASTOMPClauses;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getOuterClausesList()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_21
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->outerClausesList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getPrivateList()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->privateList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getReductionMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method protected getReductionOperator(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->reductionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    :goto_34
    return-object v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method public getScheduleType()Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;
    .registers 2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->scheduleType:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    return-object v0
.end method

.method public getSharedList()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->sharedList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getUsedVariables()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->usedVariablesCollected:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->collectUsedVariables()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->usedVariables:Ljava/util/HashSet;

    return-object v0
.end method

.method public hasSharedVariable(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->fullSharedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/compiler/Variable;

    iget-object v0, v0, Lcom/samsung/javaomp/compiler/Variable;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isCollapse()Z
    .registers 2

    iget v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->collapseSize:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDefaultNone()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isDefaultNone:Z

    return v0
.end method

.method public isDefaultShared()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isDefaultShared:Z

    return v0
.end method

.method public isMergeable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isMergeable:Z

    return v0
.end method

.method public isNoWait()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isNoWait:Z

    return v0
.end method

.method public isOrdered()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isOrdered:Z

    return v0
.end method

.method public isParallel()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isParallel:Z

    return v0
.end method

.method public isPrivateVariableInOuterParallelContext(Ljava/lang/String;Lcom/samsung/javaomp/compiler/JavaParserVisitorImpl;)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, p1}, Lcom/samsung/javaomp/compiler/JavaParserVisitorImpl;->findVariable(Ljava/lang/String;)Lcom/samsung/javaomp/compiler/Variable;

    move-result-object v4

    if-eqz v4, :cond_64

    invoke-virtual {v4}, Lcom/samsung/javaomp/compiler/Variable;->isLoopVariable()Z

    move-result v0

    if-nez v0, :cond_64

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getOuterClauses()Lcom/samsung/javaomp/compiler/ASTOMPClauses;

    move-result-object v3

    :goto_13
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isParallel()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getOuterClauses()Lcom/samsung/javaomp/compiler/ASTOMPClauses;

    move-result-object v3

    goto :goto_13

    :cond_20
    if-eqz v0, :cond_2f

    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->getFullSharedList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    :cond_2e
    :goto_2e
    return v1

    :cond_2f
    if-eqz v0, :cond_33

    if-eqz v3, :cond_2e

    :cond_33
    if-nez v3, :cond_37

    move v1, v2

    goto :goto_2e

    :cond_37
    iget-object v0, v3, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->privateList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, v3, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->firstprivateList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, v3, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->lastprivateList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, v3, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->copyprivateList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->collectReductionVariables()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_61
    move v2, v1

    :cond_62
    move v1, v2

    goto :goto_2e

    :cond_64
    move v0, v2

    goto :goto_f
.end method

.method public isReduction()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isReduction:Z

    return v0
.end method

.method public jjtAccept(Lcom/samsung/javaomp/compiler/JavaParserVisitor;Ljava/io/PrintWriter;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p1, p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserVisitor;->visit(Lcom/samsung/javaomp/compiler/ASTOMPClauses;Ljava/io/PrintWriter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setChunkSize(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/javaomp/compiler/ParseException;
        }
    .end annotation

    if-gez p1, :cond_1b

    new-instance v0, Lcom/samsung/javaomp/compiler/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chunk size must be positive, was - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/compiler/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iput p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->chunkSize:I

    return-void
.end method

.method public setCollapseSize(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->collapseSize:I

    return-void
.end method

.method public setDefaultNone(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isDefaultNone:Z

    return-void
.end method

.method public setDefaultShared(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isDefaultShared:Z

    return-void
.end method

.method public setFinalExpression(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->finalExpression:Ljava/lang/String;

    return-void
.end method

.method public setFullSharedList(Ljava/util/LinkedList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/javaomp/compiler/Variable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->fullSharedList:Ljava/util/LinkedList;

    return-void
.end method

.method public setIfExpression(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->ifExpression:Ljava/lang/String;

    return-void
.end method

.method public setMergeable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isMergeable:Z

    return-void
.end method

.method public setNoWait(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isNoWait:Z

    return-void
.end method

.method public setNumThreads(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->numThreads:Ljava/lang/String;

    return-void
.end method

.method public setOrdered(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isOrdered:Z

    return-void
.end method

.method public setOuterClauses(Lcom/samsung/javaomp/compiler/ASTOMPClauses;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->outerClauses:Lcom/samsung/javaomp/compiler/ASTOMPClauses;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->addNestedClause(Lcom/samsung/javaomp/compiler/ASTOMPClauses;)V

    :cond_7
    return-void
.end method

.method public setParallel(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isParallel:Z

    return-void
.end method

.method public setReduction(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->isReduction:Z

    return-void
.end method

.method public setScheduleType(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/javaomp/compiler/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "static"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->STATIC:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->scheduleType:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    :cond_d
    :goto_d
    return-void

    :cond_e
    const-string v0, "dynamic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->DYNAMIC:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->scheduleType:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    goto :goto_d

    :cond_1b
    const-string v0, "guided"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->GUIDED:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->scheduleType:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    goto :goto_d

    :cond_28
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->AUTO:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->scheduleType:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    goto :goto_d

    :cond_35
    const-string/jumbo v0, "runtime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;->RUNTIME:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPClauses;->scheduleType:Lcom/samsung/javaomp/compiler/ASTOMPClauses$ScheduleType;

    goto :goto_d
.end method
