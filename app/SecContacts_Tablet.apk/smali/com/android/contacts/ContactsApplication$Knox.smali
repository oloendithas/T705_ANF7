.class public Lcom/android/contacts/ContactsApplication$Knox;
.super Ljava/lang/Object;
.source "ContactsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Knox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsApplication$Knox$MODE;
    }
.end annotation


# static fields
.field public static final TITLE_KNOX:Ljava/lang/String; = "KNOX"

.field public static final TITLE_KNOX2:Ljava/lang/String; = "KNOX II"

.field public static isKnox:Z

.field public static which:Lcom/android/contacts/ContactsApplication$Knox$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    .line 75
    sget-object v0, Lcom/android/contacts/ContactsApplication$Knox$MODE;->PERSONAL:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    sput-object v0, Lcom/android/contacts/ContactsApplication$Knox;->which:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method
