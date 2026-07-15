declare module '@apiverve/disposablephone' {
  export interface disposablephoneOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface disposablephoneResponse {
    status: string;
    error: string | null;
    data: DisposablePhoneNumberCheckerData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface DisposablePhoneNumberCheckerData {
      phone:        null | string;
      isDisposable: boolean | null;
      firstSeen:    Date | null;
  }

  export default class disposablephoneWrapper {
    constructor(options: disposablephoneOptions);

    execute(callback: (error: any, data: disposablephoneResponse | null) => void): Promise<disposablephoneResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: disposablephoneResponse | null) => void): Promise<disposablephoneResponse>;
    execute(query?: Record<string, any>): Promise<disposablephoneResponse>;
  }
}
