.class public Lcom/nuance/connect/util/ConnectAction;
.super Ljava/lang/Object;
.source "ConnectAction.java"


# instance fields
.field private extras:Landroid/os/Bundle;

.field private filter:Lcom/nuance/connect/util/ActionFilter;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/util/ActionFilter;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "filter"    # Lcom/nuance/connect/util/ActionFilter;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/nuance/connect/util/ConnectAction;->filter:Lcom/nuance/connect/util/ActionFilter;

    .line 32
    iput-object p2, p0, Lcom/nuance/connect/util/ConnectAction;->extras:Landroid/os/Bundle;

    .line 33
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/connect/util/ConnectAction;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFilter()Lcom/nuance/connect/util/ActionFilter;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/connect/util/ConnectAction;->filter:Lcom/nuance/connect/util/ActionFilter;

    return-object v0
.end method
