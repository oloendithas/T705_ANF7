.class Landroid/webkitsec/WebViewClassic$1;
.super Landroid/os/AsyncTask;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewClassic;->setupPackageListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .registers 2

    .prologue
    .line 3664
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$1;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 3664
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic$1;->doInBackground([Ljava/lang/Void;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Set;
    .registers 7
    .param p1, "unused"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3668
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3669
    .local v1, "installedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$1;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3670
    .local v3, "pm":Landroid/content/pm/PackageManager;
    # getter for: Landroid/webkitsec/WebViewClassic;->sGoogleApps:Ljava/util/Set;
    invoke-static {}, Landroid/webkitsec/WebViewClassic;->access$3000()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3672
    .local v2, "name":Ljava/lang/String;
    const/4 v4, 0x5

    :try_start_24
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 3674
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_2a} :catch_2b

    goto :goto_17

    .line 3675
    :catch_2b
    move-exception v4

    goto :goto_17

    .line 3679
    .end local v2    # "name":Ljava/lang/String;
    :cond_2d
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3664
    check-cast p1, Ljava/util/Set;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic$1;->onPostExecute(Ljava/util/Set;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3685
    .local p1, "installedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$1;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3686
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$1;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0xb8

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3688
    :cond_13
    return-void
.end method
