.class Lcom/diotek/ime/framework/input/AbstractInputModule$2;
.super Lcom/diotek/ime/framework/input/InputModule$Timer;
.source "AbstractInputModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/input/AbstractInputModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/input/AbstractInputModule;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/input/AbstractInputModule;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule$2;->this$0:Lcom/diotek/ime/framework/input/AbstractInputModule;

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/InputModule$Timer;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule$2;->this$0:Lcom/diotek/ime/framework/input/AbstractInputModule;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule$2;->this$0:Lcom/diotek/ime/framework/input/AbstractInputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoPeriod:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 160
    return-void
.end method
