.class Lcom/nuance/connect/util/InstallMetadata$1;
.super Ljava/lang/Object;
.source "InstallMetadata.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/util/InstallMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/util/InstallMetadata;


# direct methods
.method constructor <init>(Lcom/nuance/connect/util/InstallMetadata;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/nuance/connect/util/InstallMetadata$1;->this$0:Lcom/nuance/connect/util/InstallMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata$1;->this$0:Lcom/nuance/connect/util/InstallMetadata;

    # invokes: Lcom/nuance/connect/util/InstallMetadata;->flush()V
    invoke-static {v0}, Lcom/nuance/connect/util/InstallMetadata;->access$000(Lcom/nuance/connect/util/InstallMetadata;)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
