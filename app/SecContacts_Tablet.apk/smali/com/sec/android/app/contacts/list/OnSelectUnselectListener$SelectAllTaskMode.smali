.class public final enum Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;
.super Ljava/lang/Enum;
.source "OnSelectUnselectListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectAllTaskMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

.field public static final enum DEFAULT:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

.field public static final enum PICK:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

.field public static final enum V_CARD:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->DEFAULT:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    new-instance v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    const-string v1, "PICK"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->PICK:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    new-instance v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    const-string v1, "V_CARD"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->V_CARD:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    sget-object v1, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->DEFAULT:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->PICK:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->V_CARD:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->$VALUES:[Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->$VALUES:[Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    return-object v0
.end method
