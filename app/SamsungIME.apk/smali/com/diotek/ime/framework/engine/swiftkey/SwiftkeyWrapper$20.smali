.class Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$20;
.super Ljava/lang/Object;
.source "SwiftkeyWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeOldLanguagePackFolderByThread()V
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
    .line 2443
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$20;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2445
    const-string v1, "/data/data/com.sec.android.inputmethod/SwiftKey/"

    .line 2446
    .local v1, "oldLanguagePackFolder":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.sec.android.inputmethod/SwiftKey/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2447
    .local v0, "dir":Ljava/io/File;
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$20;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # invokes: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->removeOldLanguagePackFolder(Ljava/io/File;)V
    invoke-static {v2, v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$2000(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Ljava/io/File;)V

    .line 2448
    return-void
.end method
