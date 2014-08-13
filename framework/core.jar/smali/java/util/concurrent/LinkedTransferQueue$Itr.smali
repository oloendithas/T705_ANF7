.class final Ljava/util/concurrent/LinkedTransferQueue$Itr;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field final synthetic this$0:Ljava/util/concurrent/LinkedTransferQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedTransferQueue;)V
    .locals 1

    .prologue
    .line 859
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;->advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 861
    return-void
.end method

.method private advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V
    .locals 8
    .param p1, "prev"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    const/4 v7, 0x0

    .line 813
    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v4, "r":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v6

    if-nez v6, :cond_2

    .line 814
    iput-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 825
    :cond_0
    :goto_0
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 827
    move-object v3, p1

    .line 828
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_1
    if-nez v3, :cond_5

    iget-object v6, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    iget-object v5, v6, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 829
    .local v5, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_2
    if-nez v5, :cond_6

    .line 855
    :cond_1
    iput-object v7, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 856
    iput-object v7, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 857
    :goto_3
    return-void

    .line 815
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v5    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "b":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 816
    :cond_3
    iput-object v7, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_0

    .line 821
    :cond_4
    :goto_4
    iget-object v5, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .restart local v5    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v5, :cond_0

    if-eq v5, v0, :cond_0

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v2, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v2, :cond_0

    if-eq v2, v5, :cond_0

    .line 822
    invoke-virtual {v0, v5, v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    goto :goto_4

    .line 828
    .end local v0    # "b":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v5    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_5
    iget-object v5, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_2

    .line 831
    .restart local v5    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_6
    if-ne v5, v3, :cond_7

    .line 832
    const/4 v3, 0x0

    .line 833
    goto :goto_1

    .line 835
    :cond_7
    iget-object v1, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 836
    .local v1, "item":Ljava/lang/Object;
    iget-boolean v6, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v6, :cond_8

    .line 837
    if-eqz v1, :cond_9

    if-eq v1, v5, :cond_9

    .line 838
    invoke-static {v1}, Ljava/util/concurrent/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 839
    iput-object v5, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_3

    .line 843
    :cond_8
    if-eqz v1, :cond_1

    .line 846
    :cond_9
    if-nez v3, :cond_a

    .line 847
    move-object v3, v5

    goto :goto_1

    .line 848
    :cond_a
    iget-object v2, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .restart local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v2, :cond_1

    .line 850
    if-ne v5, v2, :cond_b

    .line 851
    const/4 v3, 0x0

    goto :goto_1

    .line 853
    :cond_b
    invoke-virtual {v3, v5, v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    goto :goto_1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 864
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 868
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 869
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 870
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 871
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Itr;->advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 872
    return-object v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 876
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 877
    .local v0, "lastRet":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v0, :cond_0

    .line 878
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 879
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 880
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 881
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 882
    :cond_1
    return-void
.end method
