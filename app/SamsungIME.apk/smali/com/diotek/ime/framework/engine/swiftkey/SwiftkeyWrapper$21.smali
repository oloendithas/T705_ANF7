.class Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$21;
.super Ljava/lang/Object;
.source "SwiftkeyWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeOldKPMFolderByThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0

    .prologue
    .line 2476
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$21;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$21;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # invokes: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeOldKPMFolder()V
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$2100(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    .line 2479
    return-void
.end method
