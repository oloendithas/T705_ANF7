.class public final enum Lcom/android/contacts/ContactsApplication$Knox$MODE;
.super Ljava/lang/Enum;
.source "ContactsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsApplication$Knox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/ContactsApplication$Knox$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/ContactsApplication$Knox$MODE;

.field public static final enum KNOX1:Lcom/android/contacts/ContactsApplication$Knox$MODE;

.field public static final enum KNOX2:Lcom/android/contacts/ContactsApplication$Knox$MODE;

.field public static final enum PERSONAL:Lcom/android/contacts/ContactsApplication$Knox$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/android/contacts/ContactsApplication$Knox$MODE;

    const-string v1, "PERSONAL"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactsApplication$Knox$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/ContactsApplication$Knox$MODE;->PERSONAL:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    new-instance v0, Lcom/android/contacts/ContactsApplication$Knox$MODE;

    const-string v1, "KNOX1"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/ContactsApplication$Knox$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/ContactsApplication$Knox$MODE;->KNOX1:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    new-instance v0, Lcom/android/contacts/ContactsApplication$Knox$MODE;

    const-string v1, "KNOX2"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/ContactsApplication$Knox$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/ContactsApplication$Knox$MODE;->KNOX2:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/contacts/ContactsApplication$Knox$MODE;

    sget-object v1, Lcom/android/contacts/ContactsApplication$Knox$MODE;->PERSONAL:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/ContactsApplication$Knox$MODE;->KNOX1:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/ContactsApplication$Knox$MODE;->KNOX2:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/ContactsApplication$Knox$MODE;->$VALUES:[Lcom/android/contacts/ContactsApplication$Knox$MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/ContactsApplication$Knox$MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/android/contacts/ContactsApplication$Knox$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactsApplication$Knox$MODE;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/ContactsApplication$Knox$MODE;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/contacts/ContactsApplication$Knox$MODE;->$VALUES:[Lcom/android/contacts/ContactsApplication$Knox$MODE;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/ContactsApplication$Knox$MODE;

    return-object v0
.end method
