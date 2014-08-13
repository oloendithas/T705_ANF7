.class public Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/MessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwypeMessage"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public body:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public modes:[I

.field public subject:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "modes"    # [I
    .param p6, "time"    # Ljava/lang/String;
    .param p7, "language"    # Ljava/lang/String;
    .param p8, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->messageId:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->subject:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->body:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->target:Ljava/lang/String;

    .line 53
    if-eqz p5, :cond_0

    .line 54
    invoke-virtual {p5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->modes:[I

    .line 56
    :cond_0
    iput-object p7, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->language:Ljava/lang/String;

    .line 57
    iput-object p6, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->time:Ljava/lang/String;

    .line 58
    iput-object p8, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->url:Ljava/lang/String;

    .line 59
    return-void
.end method
