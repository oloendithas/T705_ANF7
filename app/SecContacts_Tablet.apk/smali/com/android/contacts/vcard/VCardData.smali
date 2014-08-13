.class public Lcom/android/contacts/vcard/VCardData;
.super Ljava/lang/Object;
.source "VCardData.java"


# instance fields
.field address:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, " "

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardData;->name:Ljava/lang/String;

    .line 5
    const-string v0, " "

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardData;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardData;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNo"    # Ljava/lang/String;
    .param p2, "emailAdd"    # Ljava/lang/String;

    .prologue
    .line 18
    if-eqz p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    :cond_0
    const-string p1, ""

    .line 20
    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    :cond_2
    const-string p2, ""

    .line 22
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardData;->address:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    if-eqz p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    :cond_0
    const-string p1, ""

    .line 12
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/vcard/VCardData;->name:Ljava/lang/String;

    .line 13
    return-void
.end method
