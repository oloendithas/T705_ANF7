.class Lcom/android/server/ssrm/Monitor$30;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Lcom/android/server/ssrm/Monitor$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->registerCommands()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 0

    .prologue
    .line 2133
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$30;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2137
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$30;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisPrime:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    if-eqz v0, :cond_3

    .line 2138
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 2139
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "GovernorAdonisPrime.setBrowserPageLoading:: false"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$30;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisPrime:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->setBrowserPageLoading(Z)V

    .line 2154
    :cond_1
    :goto_0
    return-void

    .line 2142
    :cond_2
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "GovernorAdonisPrime.setBrowserPageLoading:: true"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$30;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisPrime:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    invoke-virtual {v0, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->setBrowserPageLoading(Z)V

    goto :goto_0

    .line 2145
    :cond_3
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$30;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisMini:Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;

    if-eqz v0, :cond_1

    .line 2146
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 2147
    :cond_4
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "GovernorAdonisMini.setBrowserPageLoading:: false"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$30;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisMini:Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->setBrowserPageLoading(Z)V

    goto :goto_0

    .line 2150
    :cond_5
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "GovernorAdonisMini.setBrowserPageLoading:: true"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$30;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisMini:Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;

    invoke-virtual {v0, v3}, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;->setBrowserPageLoading(Z)V

    goto :goto_0
.end method
