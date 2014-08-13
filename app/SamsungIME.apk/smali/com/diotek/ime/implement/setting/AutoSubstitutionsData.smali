.class public Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;
.super Ljava/lang/Object;
.source "AutoSubstitutionsData.java"


# instance fields
.field mShortcut:Ljava/lang/String;

.field mSubstitution:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "shortcut"    # Ljava/lang/CharSequence;
    .param p2, "substitution"    # Ljava/lang/CharSequence;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->mShortcut:Ljava/lang/String;

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->mSubstitution:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "shortcut"    # Ljava/lang/String;
    .param p2, "substitution"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->mShortcut:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->mSubstitution:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getShortcut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->mShortcut:Ljava/lang/String;

    return-object v0
.end method

.method public getSubstitutions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->mSubstitution:Ljava/lang/String;

    return-object v0
.end method
