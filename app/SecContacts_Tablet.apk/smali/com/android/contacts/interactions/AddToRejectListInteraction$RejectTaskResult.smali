.class public Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;
.super Ljava/lang/Object;
.source "AddToRejectListInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/AddToRejectListInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RejectTaskResult"
.end annotation


# instance fields
.field contactUri:Landroid/net/Uri;

.field countOfTotalBlackList:I

.field displayName:Ljava/lang/String;

.field exactlyMatchblackListHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field phoneNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rejectValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;",
            ">;"
        }
    .end annotation
.end field

.field result:I

.field samePhoneNumArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field samePhoneNumContactsArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field samePhoneNumContactsIdsArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;


# direct methods
.method public constructor <init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V
    .locals 1

    .prologue
    .line 1515
    iput-object p1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    .line 1535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsArr:Ljava/util/ArrayList;

    .line 1537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    return-void
.end method
