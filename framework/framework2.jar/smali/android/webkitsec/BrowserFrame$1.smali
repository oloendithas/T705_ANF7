.class Landroid/webkitsec/BrowserFrame$1;
.super Landroid/webkitsec/HttpAuthHandler;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/BrowserFrame;->didReceiveAuthenticationChallenge(ILjava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/BrowserFrame;

.field final synthetic val$handle:I

.field final synthetic val$suppressDialog:Z

.field final synthetic val$useCachedCredentials:Z


# direct methods
.method constructor <init>(Landroid/webkitsec/BrowserFrame;ZIZ)V
    .registers 5

    .prologue
    .line 1239
    iput-object p1, p0, Landroid/webkitsec/BrowserFrame$1;->this$0:Landroid/webkitsec/BrowserFrame;

    iput-boolean p2, p0, Landroid/webkitsec/BrowserFrame$1;->val$useCachedCredentials:Z

    iput p3, p0, Landroid/webkitsec/BrowserFrame$1;->val$handle:I

    iput-boolean p4, p0, Landroid/webkitsec/BrowserFrame$1;->val$suppressDialog:Z

    invoke-direct {p0}, Landroid/webkitsec/HttpAuthHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 1253
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame$1;->this$0:Landroid/webkitsec/BrowserFrame;

    iget v1, p0, Landroid/webkitsec/BrowserFrame$1;->val$handle:I

    # invokes: Landroid/webkitsec/BrowserFrame;->nativeAuthenticationCancel(I)V
    invoke-static {v0, v1}, Landroid/webkitsec/BrowserFrame;->access$100(Landroid/webkitsec/BrowserFrame;I)V

    .line 1254
    return-void
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1248
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame$1;->this$0:Landroid/webkitsec/BrowserFrame;

    iget v1, p0, Landroid/webkitsec/BrowserFrame$1;->val$handle:I

    # invokes: Landroid/webkitsec/BrowserFrame;->nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1, p2}, Landroid/webkitsec/BrowserFrame;->access$000(Landroid/webkitsec/BrowserFrame;ILjava/lang/String;Ljava/lang/String;)V

    .line 1249
    return-void
.end method

.method public suppressDialog()Z
    .registers 2

    .prologue
    .line 1258
    iget-boolean v0, p0, Landroid/webkitsec/BrowserFrame$1;->val$suppressDialog:Z

    return v0
.end method

.method public useHttpAuthUsernamePassword()Z
    .registers 2

    .prologue
    .line 1243
    iget-boolean v0, p0, Landroid/webkitsec/BrowserFrame$1;->val$useCachedCredentials:Z

    return v0
.end method
