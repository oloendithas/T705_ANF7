.class public Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
.super Ljava/lang/Object;
.source "InteractionContactDatas.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public contactId:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public dataId:Ljava/lang/String;

.field public dataType:I

.field public displayName:Ljava/lang/String;

.field public displayNameAlt:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public rawContactId:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

.field public typeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Z
    .locals 1
    .param p1, "t"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->shouldCollapseWith(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->collapseWith(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Z

    move-result v0

    return v0
.end method

.method public shouldCollapseWith(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Z
    .locals 4
    .param p1, "t"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->shouldCollapseWith(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;)Z

    move-result v0

    return v0
.end method
