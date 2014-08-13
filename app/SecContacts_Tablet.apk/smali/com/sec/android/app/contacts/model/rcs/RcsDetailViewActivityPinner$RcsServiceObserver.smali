.class Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$RcsServiceObserver;
.super Landroid/database/ContentObserver;
.source "RcsDetailViewActivityPinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RcsServiceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$RcsServiceObserver;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;

    .line 91
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$RcsServiceObserver;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->query()V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$RcsServiceObserver;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->readDataFromQuery()V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$RcsServiceObserver;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->updateUi()V

    .line 100
    return-void
.end method
