.class public final Lcom/visionobjects/textwidget/g/b;
.super Ljava/lang/Object;
.source "DelayedEvent.java"

# interfaces
.implements Lcom/visionobjects/textwidget/g/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/g/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/visionobjects/textwidget/g/b$a;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/visionobjects/textwidget/g/b$a;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/visionobjects/textwidget/g/b;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/visionobjects/textwidget/g/b;->b:Lcom/visionobjects/textwidget/g/b$a;

    .line 36
    new-instance v0, Lcom/visionobjects/textwidget/g/d;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/g/d;-><init>(Lcom/visionobjects/textwidget/g/c$b;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/g/b;->c:Landroid/os/Handler;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->d:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->e:Z

    .line 39
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->d:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/visionobjects/textwidget/g/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    iput-boolean v1, p0, Lcom/visionobjects/textwidget/g/b;->e:Z

    .line 73
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/visionobjects/textwidget/g/b;->f:I

    .line 59
    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/visionobjects/textwidget/g/b;->b:Lcom/visionobjects/textwidget/g/b$a;

    invoke-interface {v0, p0}, Lcom/visionobjects/textwidget/g/b$a;->a(Lcom/visionobjects/textwidget/g/b;)V

    .line 141
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/g/b;->d:Z

    .line 51
    if-nez p1, :cond_0

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->e:Z

    .line 53
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->d:Z

    if-eqz v0, :cond_0

    .line 81
    iput-boolean v1, p0, Lcom/visionobjects/textwidget/g/b;->e:Z

    .line 82
    iget-object v0, p0, Lcom/visionobjects/textwidget/g/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object v0, p0, Lcom/visionobjects/textwidget/g/b;->b:Lcom/visionobjects/textwidget/g/b$a;

    invoke-interface {v0, p0}, Lcom/visionobjects/textwidget/g/b$a;->a(Lcom/visionobjects/textwidget/g/b;)V

    .line 85
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->d:Z

    if-eqz v0, :cond_0

    .line 93
    iput-boolean v3, p0, Lcom/visionobjects/textwidget/g/b;->e:Z

    .line 94
    iget-object v0, p0, Lcom/visionobjects/textwidget/g/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    iget-object v0, p0, Lcom/visionobjects/textwidget/g/b;->c:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 102
    iget v0, p0, Lcom/visionobjects/textwidget/g/b;->f:I

    if-nez v0, :cond_0

    .line 103
    const-string v0, "DelayedEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visionobjects/textwidget/g/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scheduled to run after zero delay!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget v0, p0, Lcom/visionobjects/textwidget/g/b;->f:I

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/g/b;->b(I)V

    .line 106
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-boolean v1, p0, Lcom/visionobjects/textwidget/g/b;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visionobjects/textwidget/g/b;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->d:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->e:Z

    .line 123
    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/g/b;->e:Z

    return v0
.end method
