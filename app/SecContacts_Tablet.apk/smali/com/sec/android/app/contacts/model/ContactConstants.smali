.class public final Lcom/sec/android/app/contacts/model/ContactConstants;
.super Ljava/lang/Object;
.source "ContactConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/ContactConstants$SIM2;,
        Lcom/sec/android/app/contacts/model/ContactConstants$SIM;,
        Lcom/sec/android/app/contacts/model/ContactConstants$ExAppInfo;,
        Lcom/sec/android/app/contacts/model/ContactConstants$ActivityRequest;,
        Lcom/sec/android/app/contacts/model/ContactConstants$Group;,
        Lcom/sec/android/app/contacts/model/ContactConstants$Intent;,
        Lcom/sec/android/app/contacts/model/ContactConstants$Extra;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final ACTION_DELETE_CONTACT_COMPLETE:Ljava/lang/String; = "deleteContactComplete"

.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field public static final CLAUSE_CONTACTS_EXCEPT_SIM:Ljava/lang/String; = "link_type1 != \'vnd.sec.contact.sim\'"

.field public static final CLAUSE_CONTACTS_EXCEPT_SIM2:Ljava/lang/String; = "link_type1 != \'vnd.sec.contact.sim2\'"

.field public static final CLAUSE_CONTACTS_EXCEPT_SIM2_WITH_ACCOUNT_TYPE:Ljava/lang/String; = "account_type != \'vnd.sec.contact.sim2\'"

.field public static final CLAUSE_CONTACTS_EXCEPT_SIM_WITH_ACCOUNT_TYPE:Ljava/lang/String; = "account_type != \'vnd.sec.contact.sim\'"

.field public static final CLAUSE_CONTACTS_PHONE_ACCOUNT:Ljava/lang/String; = "link_type1 == \'vnd.sec.contact.phone\'"

.field public static final CLAUSE_GROUPS_EXCEPT_SIM:Ljava/lang/String; = "account_type != \'vnd.sec.contact.sim\'"

.field public static final CLAUSE_GROUPS_EXCEPT_SIM2:Ljava/lang/String; = "account_type != \'vnd.sec.contact.sim2\'"

.field public static final EASY_MODE_SWITCH:Ljava/lang/String; = "easy_mode_switch"

.field public static final EASY_MODE_SWITCH_INTENT:Ljava/lang/String; = "com.android.launcher.action.EASY_MODE_CHANGE"

.field public static final KEY_SAMSUNG_ACCOUNT_VALIDATION:Ljava/lang/String; = "keySamungAccountValidation"

.field public static final LINK_TYPE1:Ljava/lang/String; = "link_type1"

.field public static final SWEEP_OPERTAION_AREA_EXCLUDEAVATAR:Ljava/lang/String; = "ExcludeAvatar"

.field public static final SWEEP_OPERTAION_AREA_LISTALL:Ljava/lang/String; = "ListAll"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method
