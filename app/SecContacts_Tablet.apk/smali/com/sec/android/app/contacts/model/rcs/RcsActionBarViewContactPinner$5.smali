.class Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$5;
.super Landroid/database/ContentObserver;
.source "RcsActionBarViewContactPinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$5;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$5;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    # invokes: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->queryForRCSContact()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$700(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)V

    .line 376
    return-void
.end method
