.class Landroid/webkitsec/ClientCertRequestHandler$3;
.super Ljava/lang/Object;
.source "ClientCertRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/ClientCertRequestHandler;->ignore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/ClientCertRequestHandler;


# direct methods
.method constructor <init>(Landroid/webkitsec/ClientCertRequestHandler;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Landroid/webkitsec/ClientCertRequestHandler$3;->this$0:Landroid/webkitsec/ClientCertRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 103
    iget-object v0, p0, Landroid/webkitsec/ClientCertRequestHandler$3;->this$0:Landroid/webkitsec/ClientCertRequestHandler;

    # getter for: Landroid/webkitsec/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v0}, Landroid/webkitsec/ClientCertRequestHandler;->access$100(Landroid/webkitsec/ClientCertRequestHandler;)Landroid/webkitsec/BrowserFrame;

    move-result-object v1

    iget-object v0, p0, Landroid/webkitsec/ClientCertRequestHandler$3;->this$0:Landroid/webkitsec/ClientCertRequestHandler;

    # getter for: Landroid/webkitsec/ClientCertRequestHandler;->mHandle:I
    invoke-static {v0}, Landroid/webkitsec/ClientCertRequestHandler;->access$000(Landroid/webkitsec/ClientCertRequestHandler;)I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, [[B

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkitsec/BrowserFrame;->nativeSslClientCert(IJ[[B)V

    .line 104
    return-void
.end method
