.class final Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/samsung/supportlibrary/mywordlist/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

.field private d:Lcom/touchtype_fluency/Session;


# direct methods
.method private constructor <init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Ljava/util/List;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;",
            ">;",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;",
            ">;",
            "Lcom/touchtype_fluency/Session;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iput-object p4, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;->a:Ljava/util/List;

    iput-object p5, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;->d:Lcom/touchtype_fluency/Session;

    return-void
.end method

.method synthetic constructor <init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Ljava/util/List;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Ljava/util/List;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/16 v11, 0x64

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    invoke-interface {v0, v2, v11}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onRemovingProgress(II)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;->d:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v3

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;->getTerm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;->a:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Removed term \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/high16 v5, 0x4059000000000000L

    add-int/lit8 v0, v1, 0x1

    int-to-double v7, v0

    add-int/lit8 v0, v4, 0x1

    int-to-double v9, v0

    div-double/2addr v7, v9

    mul-double/2addr v5, v7

    double-to-int v0, v5

    iget-object v5, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    invoke-interface {v5, v0, v11}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onRemovingProgress(II)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interrupted RemoveWordsThread.run while removing words from the dynamic model. Writing the dynamic model to tidy up."

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->c()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/touchtype_fluency/Trainer;->write(Lcom/touchtype_fluency/TagSelector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    invoke-interface {v0, v2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onRemovingComplete(Z)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IOException while writing to the persistent dynamic model in RemoveWordThread.run"

    invoke-static {v1, v3, v0}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    invoke-interface {v0, v2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onRemovingComplete(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->c()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/touchtype_fluency/Trainer;->write(Lcom/touchtype_fluency/TagSelector;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finished removing words and writing to dynamic model"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    invoke-interface {v0, v11, v11}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onRemovingProgress(II)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onRemovingComplete(Z)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IOException while writing to the persistent dynamic model in RemoveWordThread.run"

    invoke-static {v1, v3, v0}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    invoke-interface {v0, v2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onRemovingComplete(Z)V

    goto :goto_3
.end method
