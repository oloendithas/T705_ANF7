.class Lcom/voovio/sweep/SweepView$7;
.super Ljava/lang/Object;
.source "SweepView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepView;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voovio/sweep/SweepView;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voovio/sweep/SweepView$7;->this$0:Lcom/voovio/sweep/SweepView;

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/voovio/sweep/SweepView$7;->this$0:Lcom/voovio/sweep/SweepView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/SweepView;->setAutodrive(Z)V

    .line 887
    return-void
.end method
